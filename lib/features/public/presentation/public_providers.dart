import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/network/network_providers.dart';
import '../data/public_remote_data_source.dart';
import '../data/public_repository_impl.dart';
import '../domain/city_ref.dart';
import '../domain/company_profile.dart';
import '../domain/company_summary.dart';
import '../domain/home_testimonial.dart';
import '../domain/public_repository.dart';
import '../domain/public_review.dart';

/// Source de données HTTP des écrans publics.
final publicRemoteDataSourceProvider = Provider<PublicRemoteDataSource>(
  (ref) => PublicRemoteDataSource(ref.watch(dioProvider)),
);

/// Dépôt public — seul point d'entrée de la présentation.
final publicRepositoryProvider = Provider<PublicRepository>(
  (ref) => PublicRepositoryImpl(ref.watch(publicRemoteDataSourceProvider)),
);

/// Villes desservies — alimente les listes déroulantes départ / arrivée.
///
/// Gardé en cache sur la session (le serveur les cache déjà 1 h) : inutile de
/// les recharger à chaque écran.
final citiesProvider = FutureProvider<List<CityRef>>(
  (ref) => ref.watch(publicRepositoryProvider).cities(),
);

/// Compagnies partenaires de la page d'accueil.
final partnerCompaniesProvider = FutureProvider<List<CompanySummary>>(
  (ref) => ref.watch(publicRepositoryProvider).partnerCompanies(),
);

/// Témoignages mis en avant sur la page d'accueil.
final testimonialsProvider = FutureProvider<List<HomeTestimonial>>(
  (ref) => ref.watch(publicRepositoryProvider).testimonials(),
);

/// Fiche publique détaillée d'une compagnie.
final companyProfileProvider = FutureProvider.family<CompanyProfile, int>(
  (ref, id) => ref.watch(publicRepositoryProvider).companyProfile(id),
);

/// Avis publics d'une compagnie (chargés séparément de la fiche : le champ
/// `reviews` du DTO renvoie `[]`, guide §6.2).
final companyReviewsProvider = FutureProvider.family<List<PublicReview>, int>(
  (ref, id) => ref.watch(publicRepositoryProvider).companyReviews(id),
);
