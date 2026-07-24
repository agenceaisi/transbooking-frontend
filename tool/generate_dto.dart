// Générateur de DTO à partir du contrat OpenAPI `api/schema.yml`.
//
// Produit un fichier par schéma dans `lib/core/api/dto/` :
//  - les `enum` du schéma deviennent des énumérations Dart annotées
//    `@JsonValue` (valeurs **techniques** de l'API, cf. CLAUDE.md §5) ;
//  - les objets deviennent des classes freezed + json_serializable.
//
// Aucun champ n'est inventé : tout vient du schéma. Relancer après chaque mise
// à jour de `api/schema.yml`, puis `dart run build_runner build`.
//
// Usage : dart run tool/generate_dto.dart
import 'dart:io';

import 'package:yaml/yaml.dart';

const String _schemaPath = 'api/schema.yml';
const String _outputDir = 'lib/core/api/dto';
const String _barrelFile = 'lib/core/api/dto.dart';

const String _header = '''
// GÉNÉRÉ PAR tool/generate_dto.dart — NE PAS MODIFIER À LA MAIN.
// Source : api/schema.yml
''';

/// Mots réservés de Dart, à ne pas utiliser comme nom de membre.
const Set<String> _dartKeywords = {
  'abstract',
  'as',
  'assert',
  'async',
  'await',
  'break',
  'case',
  'catch',
  'class',
  'const',
  'continue',
  'covariant',
  'default',
  'deferred',
  'do',
  'dynamic',
  'else',
  'enum',
  'export',
  'extends',
  'extension',
  'external',
  'factory',
  'false',
  'final',
  'finally',
  'for',
  'function',
  'get',
  'hide',
  'if',
  'implements',
  'import',
  'in',
  'interface',
  'is',
  'late',
  'library',
  'mixin',
  'new',
  'null',
  'on',
  'operator',
  'part',
  'required',
  'rethrow',
  'return',
  'sealed',
  'set',
  'show',
  'static',
  'super',
  'switch',
  'sync',
  'this',
  'throw',
  'true',
  'try',
  'typedef',
  'var',
  'void',
  'when',
  'while',
  'with',
  'yield',
};

void main(List<String> args) {
  final schemaFile = File(_schemaPath);
  if (!schemaFile.existsSync()) {
    stderr.writeln('Schéma introuvable : $_schemaPath');
    exitCode = 1;
    return;
  }

  final root = loadYaml(schemaFile.readAsStringSync()) as YamlMap;
  final schemas = (root['components'] as YamlMap)['schemas'] as YamlMap;

  final directory = Directory(_outputDir);
  if (directory.existsSync()) directory.deleteSync(recursive: true);
  directory.createSync(recursive: true);

  final generatedFiles = <String>[];
  var enumCount = 0;
  var classCount = 0;

  for (final entry in schemas.entries) {
    final name = entry.key as String;
    // drf-spectacular émet `NullEnum` (`enum: [null]`) et `BlankEnum`
    // (`enum: ['']`) pour décrire un enum nullable/blank via `oneOf`. Ce sont
    // des artefacts sans type propre : ils sont résolus directement au niveau
    // du champ (cf. `_dartType`), on ne génère donc rien pour eux.
    if (name == 'NullEnum' || name == 'BlankEnum') continue;
    final schema = entry.value as YamlMap;
    final fileName = '${_snakeCase(name)}.dart';

    final String source;
    if (schema.containsKey('enum')) {
      source = _buildEnum(name, schema);
      enumCount++;
    } else {
      source = _buildClass(name, schema);
      classCount++;
    }

    File('$_outputDir/$fileName').writeAsStringSync(source);
    generatedFiles.add(fileName);
  }

  generatedFiles.sort();
  File(_barrelFile).writeAsStringSync(
    '$_header\n'
    '${generatedFiles.map((f) => "export 'dto/$f';").join('\n')}\n',
  );

  stdout.writeln(
    'DTO générés : $classCount classes, $enumCount énumérations '
    '→ $_outputDir',
  );
}

// ── Énumérations ────────────────────────────────────────────────────────────

String _buildEnum(String name, YamlMap schema) {
  final values = (schema['enum'] as YamlList).cast<String>();
  final buffer = StringBuffer()
    ..writeln(_header)
    ..writeln("import 'package:json_annotation/json_annotation.dart';")
    ..writeln();

  _writeDoc(buffer, schema['description'] as String?);
  buffer.writeln('enum $name {');

  for (var i = 0; i < values.length; i++) {
    final value = values[i];
    final separator = i == values.length - 1 ? ';' : ',';
    buffer
      ..writeln("  @JsonValue('$value')")
      ..writeln("  ${_memberName(value)}('$value')$separator");
  }

  buffer
    ..writeln()
    ..writeln('  const $name(this.wireValue);')
    ..writeln()
    ..writeln('  /// Valeur technique échangée avec l\'API.')
    ..writeln('  final String wireValue;')
    ..writeln('}');

  return buffer.toString();
}

// ── Classes ─────────────────────────────────────────────────────────────────

String _buildClass(String name, YamlMap schema) {
  final properties = schema['properties'] as YamlMap? ?? YamlMap();
  final required = ((schema['required'] as YamlList?) ?? YamlList())
      .cast<String>()
      .toSet();

  final fields = <_Field>[];
  final referenced = <String>{};

  for (final entry in properties.entries) {
    final field = _resolveField(
      jsonName: entry.key as String,
      schema: entry.value as YamlMap,
      isRequired: required.contains(entry.key),
    );
    fields.add(field);
    referenced.addAll(field.referencedTypes);
  }

  final fileName = _snakeCase(name);
  final buffer = StringBuffer()
    ..writeln(_header)
    ..writeln("import 'package:freezed_annotation/freezed_annotation.dart';");

  final imports =
      referenced.where((type) => type != name).map(_snakeCase).toList()..sort();
  if (imports.isNotEmpty) {
    buffer.writeln();
    for (final import in imports) {
      buffer.writeln("import '$import.dart';");
    }
  }

  buffer
    ..writeln()
    ..writeln("part '$fileName.freezed.dart';")
    ..writeln("part '$fileName.g.dart';")
    ..writeln();

  _writeDoc(buffer, schema['description'] as String?);
  buffer
    ..writeln('@freezed')
    ..writeln('abstract class $name with _\$$name {')
    ..writeln('  const factory $name({');

  for (final field in fields) {
    if (field.jsonName != field.dartName) {
      buffer.writeln("    @JsonKey(name: '${field.jsonName}')");
    }
    final prefix = field.isRequired ? 'required ' : '';
    buffer.writeln('    $prefix${field.type} ${field.dartName},');
  }

  buffer
    ..writeln('  }) = _$name;')
    ..writeln()
    ..writeln('  factory $name.fromJson(Map<String, dynamic> json) =>')
    ..writeln('      _\$${name}FromJson(json);')
    ..writeln('}');

  return buffer.toString();
}

/// Un champ résolu, prêt à être écrit.
class _Field {
  _Field({
    required this.jsonName,
    required this.dartName,
    required this.type,
    required this.isRequired,
    required this.referencedTypes,
  });

  final String jsonName;
  final String dartName;
  final String type;
  final bool isRequired;

  /// Schémas à importer pour que ce champ compile.
  final Set<String> referencedTypes;
}

_Field _resolveField({
  required String jsonName,
  required YamlMap schema,
  required bool isRequired,
}) {
  final referenced = <String>{};
  final baseType = _dartType(schema, referenced);
  final isNullable = schema['nullable'] == true;

  // Un champ absent de `required` peut manquer dans la réponse : il est
  // optionnel *et* nullable. Un champ requis mais `nullable` est toujours
  // présent, avec une valeur éventuellement nulle.
  // `dynamic` est déjà nullable : lui ajouter `?` est une erreur d'analyse.
  final needsNullable =
      (isNullable || !isRequired) &&
      baseType != 'dynamic' &&
      !baseType.endsWith('?');
  final type = needsNullable ? '$baseType?' : baseType;

  return _Field(
    jsonName: jsonName,
    dartName: _memberName(jsonName),
    type: type,
    isRequired: isRequired,
    referencedTypes: referenced,
  );
}

/// Traduit un nœud de schéma en type Dart, en collectant les schémas référencés.
String _dartType(YamlMap schema, Set<String> referenced) {
  final ref = schema[r'$ref'] as String?;
  if (ref != null) {
    final name = _refName(ref);
    referenced.add(name);
    return name;
  }

  // `allOf` n'apparaît qu'associé à une unique référence (+ `readOnly`).
  final allOf = schema['allOf'] as YamlList?;
  if (allOf != null && allOf.isNotEmpty) {
    return _dartType(allOf.first as YamlMap, referenced);
  }

  // `oneOf` : motif drf-spectacular d'un enum nullable/blank
  // (`[XEnum, BlankEnum, NullEnum]`). On retient le vrai enum ; la nullabilité
  // est portée par le `nullable: true` du champ.
  final oneOf = schema['oneOf'] as YamlList?;
  if (oneOf != null && oneOf.isNotEmpty) {
    for (final option in oneOf) {
      final optionRef = (option as YamlMap)[r'$ref'] as String?;
      if (optionRef == null) continue;
      final refName = _refName(optionRef);
      if (refName == 'BlankEnum' || refName == 'NullEnum') continue;
      referenced.add(refName);
      return refName;
    }
  }

  final type = schema['type'] as String?;
  final format = schema['format'] as String?;

  switch (type) {
    case 'integer':
      return 'int';
    case 'number':
      return 'double';
    case 'boolean':
      return 'bool';
    case 'array':
      final items = schema['items'] as YamlMap?;
      final itemType = items == null ? 'dynamic' : _dartType(items, referenced);
      return 'List<$itemType>';
    case 'object':
      return 'Map<String, dynamic>';
    case 'string':
      // `decimal` reste une chaîne : les montants sont affichés tels quels et
      // un double perdrait la précision (CLAUDE.md §13, tarifs en lecture
      // seule). `uri` et `email` sont également des chaînes côté API.
      if (format == 'date-time' || format == 'date') return 'DateTime';
      return 'String';
    default:
      return 'dynamic';
  }
}

String _refName(String ref) => ref.split('/').last;

// ── Utilitaires de nommage ──────────────────────────────────────────────────

void _writeDoc(StringBuffer buffer, String? description) {
  if (description == null || description.trim().isEmpty) return;
  for (final line in description.trim().split('\n')) {
    buffer.writeln('/// ${line.trim()}');
  }
}

/// `PaymentRead` → `payment_read`, `Method80cEnum` → `method80c_enum`.
String _snakeCase(String value) {
  final buffer = StringBuffer();
  for (var i = 0; i < value.length; i++) {
    final char = value[i];
    final isUpper = char.toUpperCase() == char && char.toLowerCase() != char;
    if (isUpper && i > 0) buffer.write('_');
    buffer.write(char.toLowerCase());
  }
  return buffer.toString();
}

/// `ticket_number` → `ticketNumber`, en évitant les mots réservés.
String _memberName(String value) {
  final parts = value.split(RegExp('[_\\-]')).where((p) => p.isNotEmpty);
  if (parts.isEmpty) return value;

  final buffer = StringBuffer(parts.first.toLowerCase());
  for (final part in parts.skip(1)) {
    buffer
      ..write(part[0].toUpperCase())
      ..write(part.substring(1).toLowerCase());
  }

  final name = buffer.toString();
  return _dartKeywords.contains(name) ? '${name}Value' : name;
}
