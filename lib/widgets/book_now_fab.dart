import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/colors.dart';

/// Botón flotante "Book Now" (misma línea visual que el compacto del navbar).
class BookNowFab extends StatelessWidget {
  const BookNowFab({super.key, required this.visible, required this.onPressed});

  final bool visible;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 220),
      curve: Curves.easeOutCubic,
      opacity: visible ? 1 : 0,
      child: IgnorePointer(
        ignoring: !visible,
        child: Semantics(
          label: 'Ir a reservar evento',
          button: true,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
              shape: const StadiumBorder(),
              elevation: 6,
              shadowColor: AppColors.primary.withValues(alpha: 0.25),
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
              textStyle: GoogleFonts.plusJakartaSans(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            child: const Text('Book Now'),
          ),
        ),
      ),
    );
  }
}
