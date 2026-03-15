import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
  });

  final String text;
  final VoidCallback onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        shape: const StadiumBorder(),
        elevation: 4,
        shadowColor: AppColors.primary.withValues(alpha: 0.2),
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        textStyle: GoogleFonts.plusJakartaSans(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      child: icon != null
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon!, size: 20),
                const SizedBox(width: 10),
                Text(text),
              ],
            )
          : Text(text),
    );
  }
}
