import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
import 'text_styles.dart';

/// Tema y espaciados centralizados de Magic Party.
///
/// Cambiar color primario, fuentes o espaciados aquí aplica
/// de forma coherente en toda la app.
abstract final class AppTheme {
  AppTheme._();

  // ─── Breakpoints (web) ─────────────────────────────────────────────────────
  /// Ancho a partir del cual se considera escritorio.
  static const double breakpointDesktop = 800;

  /// Ancho máximo de contenido en escritorio.
  static const double maxContentWidth = 1200;

  // ─── Espaciado ────────────────────────────────────────────────────────────
  /// Padding horizontal de secciones en móvil.
  static const double sectionPaddingMobile = 24;

  /// Padding horizontal de secciones en escritorio.
  static const double sectionPaddingDesktop = 48;

  /// Padding vertical típico de secciones.
  static const double sectionPaddingVertical = 48;

  /// Separación entre título de sección y contenido.
  static const double sectionTitleGap = 32;

  /// Separación entre elementos relacionados (p. ej. en un Wrap).
  static const double gapSmall = 12;
  static const double gapMedium = 20;
  static const double gapLarge = 24;

  // ─── ThemeData ────────────────────────────────────────────────────────────
  static ThemeData get light {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.light,
      primary: AppColors.primary,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme.copyWith(
        surface: AppColors.backgroundLight,
        surfaceContainerHighest: AppColors.lightPinkBackground,
      ),
      scaffoldBackgroundColor: AppColors.backgroundLight,
      textTheme: GoogleFonts.poppinsTextTheme().copyWith(
        headlineLarge: AppTextStyles.h1,
        headlineMedium: AppTextStyles.h2,
        headlineSmall: AppTextStyles.h3,
        titleLarge: AppTextStyles.h4,
        titleMedium: AppTextStyles.display,
        titleSmall: AppTextStyles.displaySmall,
        bodyLarge: AppTextStyles.bodyLarge,
        bodyMedium: AppTextStyles.body,
        bodySmall: AppTextStyles.bodySmall,
        labelLarge: AppTextStyles.label,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          elevation: 4,
          shadowColor: AppColors.primary.withValues(alpha: 0.2),
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppColors.primary,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
