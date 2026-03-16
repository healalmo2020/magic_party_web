import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Estilos de texto del sistema de diseño Magic Party.
///
/// Escala tipográfica:
/// - **Headings** (Playfair Display): títulos de sección y hero.
/// - **Display** (Plus Jakarta Sans): subtítulos y bloques destacados.
/// - **Body** (Poppins): párrafos, labels y UI general.
///
/// Usa siempre estos estilos en lugar de definir fuentes/tamaños inline
/// para mantener consistencia en todo el sitio.
abstract final class AppTextStyles {
  AppTextStyles._();

  // ─── Headings (Playfair Display) ─────────────────────────────────────────
  /// Título principal de sección (36px). Preferir para encabezados de bloque.
  static TextStyle get heading => GoogleFonts.playfairDisplay(
        fontSize: 36,
        fontWeight: FontWeight.w600,
      );

  /// Hero y títulos grandes (48px).
  static TextStyle get h1 => GoogleFonts.playfairDisplay(
        fontSize: 48,
        fontWeight: FontWeight.bold,
      );

  /// Título de sección (36px). Mismo nivel que [heading].
  static TextStyle get h2 => GoogleFonts.playfairDisplay(
        fontSize: 36,
        fontWeight: FontWeight.w600,
      );

  /// Subtítulo de bloque (28px).
  static TextStyle get h3 => GoogleFonts.playfairDisplay(
        fontSize: 28,
        fontWeight: FontWeight.w600,
      );

  /// Título de card o ítem (22px).
  static TextStyle get h4 => GoogleFonts.playfairDisplay(
        fontSize: 22,
        fontWeight: FontWeight.w500,
      );

  // ─── Display / Subtítulos (Plus Jakarta Sans) ─────────────────────────────
  static TextStyle get displayLarge => GoogleFonts.plusJakartaSans(
        fontSize: 24,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get display => GoogleFonts.plusJakartaSans(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get displaySmall => GoogleFonts.plusJakartaSans(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      );

  // ─── Body (Poppins) ───────────────────────────────────────────────────────
  static TextStyle get body => GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.normal,
      );

  static TextStyle get bodyLarge => GoogleFonts.poppins(
        fontSize: 18,
        fontWeight: FontWeight.normal,
      );

  static TextStyle get bodySmall => GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.normal,
      );

  static TextStyle get label => GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w500,
      );
}
