import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_role.dart';

part 'account_profile.freezed.dart';

/// Profil de l'utilisateur connecté.
///
/// Entité du domaine : distincte du DTO `UserProfile` généré depuis le schéma,
/// dont le champ `role` est une chaîne libre. Ici le rôle est déjà validé.
///
/// [prenom], [nom] et [email] sont facultatifs : la réponse de connexion ne
/// porte que le prénom (guide §6.1), le reste n'arrive qu'avec
/// `GET /users/me/`. Mieux vaut un champ vide qu'une valeur inventée.
@freezed
abstract class AccountProfile with _$AccountProfile {
  const factory AccountProfile({
    required String phone,
    required UserRole role,
    String? prenom,
    String? nom,
    String? email,
  }) = _AccountProfile;
}

/// Accusé de réception d'une demande de compte compagnie.
///
/// Aucun compte n'est créé : la demande part au statut `pending` et attend la
/// validation du super administrateur (guide §6.2).
@freezed
abstract class CompanyAccountRequest with _$CompanyAccountRequest {
  const factory CompanyAccountRequest({
    required int id,
    required String companyName,
    required String status,
  }) = _CompanyAccountRequest;
}
