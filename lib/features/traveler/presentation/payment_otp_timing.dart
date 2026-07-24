/// Minuteries du code de confirmation (pures, donc testables).
///
/// Deux comptes à rebours indépendants (guide §6.8) : l'expiration du code
/// (`otp_expires_at`, ~5 min) et le délai avant un nouveau renvoi (1 / 30 s).
abstract final class PaymentOtpTiming {
  /// Délai minimal entre deux renvois de code (rate limit serveur : 1 / 30 s).
  static const Duration resendCooldown = Duration(seconds: 30);

  /// Temps restant avant de pouvoir renvoyer un code ; `Duration.zero` si
  /// aucun renvoi n'a encore eu lieu ou si le délai est écoulé.
  static Duration remainingResendCooldown(
    DateTime? lastResendAt,
    DateTime now,
  ) {
    if (lastResendAt == null) return Duration.zero;
    final elapsed = now.difference(lastResendAt);
    final remaining = resendCooldown - elapsed;
    return remaining.isNegative ? Duration.zero : remaining;
  }

  /// Vrai si un nouveau code peut être demandé.
  static bool canResend(DateTime? lastResendAt, DateTime now) =>
      remainingResendCooldown(lastResendAt, now) == Duration.zero;

  /// Temps restant avant expiration du code ; `Duration.zero` si expiré ou
  /// inconnu (on n'affiche alors pas de faux compte à rebours).
  static Duration remainingOtp(DateTime? expiresAt, DateTime now) {
    if (expiresAt == null) return Duration.zero;
    final remaining = expiresAt.difference(now);
    return remaining.isNegative ? Duration.zero : remaining;
  }

  /// Vrai si le code est expiré (ou son expiration inconnue).
  static bool isExpired(DateTime? expiresAt, DateTime now) =>
      remainingOtp(expiresAt, now) == Duration.zero;
}
