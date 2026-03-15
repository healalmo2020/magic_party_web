import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Estilos de texto del sistema de diseño Magic Party (Stitch).
abstract final class AppTextStyles {
  AppTextStyles._();

  // Heading (Playfair Display)
  static TextStyle get heading => GoogleFonts.playfairDisplay(
        fontSize: 36,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get h1 => GoogleFonts.playfairDisplay(
        fontSize: 48,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get h2 => GoogleFonts.playfairDisplay(
        fontSize: 36,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get h3 => GoogleFonts.playfairDisplay(
        fontSize: 28,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get h4 => GoogleFonts.playfairDisplay(
        fontSize: 22,
        fontWeight: FontWeight.w500,
      );

  // Display / Subtítulos (Plus Jakarta Sans)
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

  // Body (Poppins)
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
