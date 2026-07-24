import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:transbooking_bf/core/api/dto.dart' as dto;
import 'package:transbooking_bf/features/traveler/data/claim_remote_data_source.dart';

/// Adaptateur HTTP programmable : capture la requête, aucun réseau réel.
class _CapturingAdapter implements HttpClientAdapter {
  RequestOptions? captured;

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    captured = options;
    return ResponseBody.fromString(
      jsonEncode(_claimReadJson),
      201,
      headers: {
        Headers.contentTypeHeader: [Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

const _claimReadJson = <String, dynamic>{
  'id': 12,
  'company': 4,
  'company_name': 'Faso Express',
  'booking': 55,
  'ticket_number': 'BF2026009999',
  'claim_type': 'perte_bagage',
  'claim_type_display': 'Perte de bagage',
  'subject': 'Bagage perdu',
  'description': 'Ma valise n\'est pas arrivée.',
  'status': 'submitted',
  'status_display': 'Soumise',
  'is_overdue': false,
  'attachments': <dynamic>[],
  'created_at': '2026-07-20T08:00:00Z',
  'updated_at': '2026-07-20T08:00:00Z',
};

void main() {
  late Dio dio;
  late _CapturingAdapter adapter;
  late ClaimRemoteDataSource remote;

  setUp(() {
    dio = Dio(BaseOptions(baseUrl: 'http://test'));
    adapter = _CapturingAdapter();
    dio.httpClientAdapter = adapter;
    remote = ClaimRemoteDataSource(dio);
  });

  dto.ClaimCreate body() => const dto.ClaimCreate(
    booking: 55,
    claimType: dto.ClaimTypeEnum.perteBagage,
    subject: 'Bagage perdu',
    description: 'Ma valise n\'est pas arrivée.',
  );

  test('sans pièce jointe : envoi JSON, pas de multipart', () async {
    await remote.create(body());

    final data = adapter.captured!.data;
    expect(data, isA<Map<String, dynamic>>());
    expect((data as Map)['claim_type'], 'perte_bagage');
  });

  test(
    'avec pièce jointe : multipart avec le fichier sous « attachment »',
    () async {
      final bytes = Uint8List.fromList([1, 2, 3, 4, 5]);

      final created = await remote.create(
        body(),
        attachment: (
          bytes: bytes,
          filename: 'recu.pdf',
          contentType: 'application/pdf',
        ),
      );

      // La réponse de lecture est bien désérialisée (id de référence).
      expect(created.id, 12);

      final data = adapter.captured!.data;
      expect(data, isA<FormData>());
      final form = data as FormData;

      // Champs texte : le type d'enum est sérialisé en valeur technique, les
      // nuls sont retirés, et le champ URI `attachment` ne pollue pas les champs.
      final fields = {for (final f in form.fields) f.key: f.value};
      expect(fields['claim_type'], 'perte_bagage');
      expect(fields['subject'], 'Bagage perdu');
      expect(fields['booking'], '55');
      expect(fields.containsKey('company'), isFalse); // nul → retiré
      expect(
        fields.containsKey('attachment'),
        isFalse,
      ); // remplacé par le fichier

      // Le fichier est porté par la partie « attachment ».
      expect(form.files, hasLength(1));
      expect(form.files.single.key, 'attachment');
      expect(form.files.single.value.filename, 'recu.pdf');
      expect(form.files.single.value.contentType?.mimeType, 'application/pdf');
    },
  );
}
