import 'dart:typed_data';

import 'package:dio/dio.dart';

import '../../../core/api/dto.dart' as dto;
import '../../../core/error/failure.dart';
import '../../../core/network/failure_mapper.dart';

/// Fichier joint transporté vers la couche réseau : octets + nom + type MIME.
///
/// Record volontairement primitif pour ne faire fuiter ni le type domaine
/// (`ClaimAttachmentDraft`) ni `dio` dans l'implémentation du repository.
typedef ClaimAttachmentPart = ({
  Uint8List bytes,
  String filename,
  String? contentType,
});

/// Appels HTTP des réclamations voyageur (guide §6.10).
class ClaimRemoteDataSource {
  const ClaimRemoteDataSource(this._dio);

  final Dio _dio;

  /// `GET /claims/` — mes réclamations (paginé, non traitées en tête).
  Future<List<dto.ClaimRead>> list() {
    return _guard(() async {
      final response = await _dio.get<Map<String, dynamic>>(
        '/claims/',
        queryParameters: const {'page_size': 100},
      );
      return dto.PaginatedClaimReadList.fromJson(
        _requireBody(response),
      ).results;
    });
  }

  /// `POST /claims/` — dépose une réclamation ; renvoie la réclamation créée.
  ///
  /// Avec [attachment], l'envoi passe en `multipart/form-data` (le fichier est
  /// porté par le champ `attachment`) ; sinon, en JSON classique.
  Future<dto.ClaimRead> create(
    dto.ClaimCreate body, {
    ClaimAttachmentPart? attachment,
  }) {
    return _guard(() async {
      final response = await _dio.post<Map<String, dynamic>>(
        '/claims/',
        data: attachment == null ? body.toJson() : _multipart(body, attachment),
      );
      return dto.ClaimRead.fromJson(_requireBody(response));
    });
  }

  /// Construit le corps `multipart/form-data` d'un dépôt avec pièce jointe.
  static FormData _multipart(dto.ClaimCreate body, ClaimAttachmentPart file) {
    // On repart du JSON du DTO en retirant les valeurs nulles et le champ
    // `attachment` (une URI côté DTO) : le vrai fichier le remplace.
    final fields = body.toJson()
      ..removeWhere((_, value) => value == null)
      ..remove('attachment');
    return FormData.fromMap({
      for (final entry in fields.entries) entry.key: '${entry.value}',
      'attachment': MultipartFile.fromBytes(
        file.bytes,
        filename: file.filename,
        contentType: file.contentType == null
            ? null
            : DioMediaType.parse(file.contentType!),
      ),
    });
  }

  static Future<T> _guard<T>(Future<T> Function() action) async {
    try {
      return await action();
    } on DioException catch (exception) {
      throw FailureMapper.fromDioException(exception);
    } on Failure {
      rethrow;
    } on Object catch (error) {
      throw UnexpectedFailure(cause: error);
    }
  }

  static Map<String, dynamic> _requireBody(Response<Map<String, dynamic>> r) {
    final body = r.data;
    if (body == null) throw const UnexpectedFailure();
    return body;
  }
}
