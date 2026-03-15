import 'package:flutter/material.dart';

/// Paleta de colores del sistema de diseño Magic Party (Stitch).
abstract final class AppColors {
  AppColors._();

  static const Color primary = Color(0xFFFF4DA3);
  static const Color primaryPink = Color(0xFFFF4DA3);
  static const Color accentGold = Color(0xFFD4AF37);
  static const Color backgroundLight = Color(0xFFF8F5F7);
  static const Color lightPinkBackground = Color(0xFFFFF0F6);
  static const Color backgroundDark = Color(0xFF230F19);

  /// Efecto Glass: blanco con 80% de opacidad.
  static Color get glass => Colors.white.withValues(alpha: 0.8);
}
