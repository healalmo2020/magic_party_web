import 'package:flutter/material.dart';

/// Paleta de colores del sistema de diseño Magic Party.
///
/// Estructura:
/// - [Primary]: rosa principal (CTAs, resaltados).
/// - [Accent]: dorado para detalles (divisores, badges).
/// - [Backgrounds]: fondos de página y secciones.
/// - [Surfaces]: efectos (glass, overlays).
///
/// Para cambiar la identidad visual de la app, modifica solo este archivo.
abstract final class AppColors {
  AppColors._();

  // ─── Primary ─────────────────────────────────────────────────────────────
  /// Rosa principal: botones, enlaces, títulos destacados.
  static const Color primary = Color(0xFFFF4FA3);

  /// Alias de [primary] para uso semántico en textos o iconos rosa.
  static const Color primaryPink = Color(0xFFFF4FA3);

  /// Rosa suave: fondos sutiles, hover secundario.
  static const Color softPink = Color(0xFFFFD1E6);

  // ─── Accent ───────────────────────────────────────────────────────────────
  /// Dorado: líneas decorativas, acentos.
  static const Color accentGold = Color(0xFFD4AF37);

  // ─── Backgrounds ──────────────────────────────────────────────────────────
  /// Fondo general claro de la landing.
  static const Color backgroundLight = Color(0xFFF8F8F8);

  /// Fondo rosa muy claro (sección reservas, cards suaves).
  static const Color lightPinkBackground = Color(0xFFFFF0F6);

  /// Fondo oscuro (footer, sección contacto).
  static const Color backgroundDark = Color(0xFF230F19);

  // ─── Surfaces / Efectos ───────────────────────────────────────────────────
  /// Efecto glass: blanco semitransparente (navbar, badges).
  static Color get glass => Colors.white.withValues(alpha: 0.8);
}
