import 'package:flutter/material.dart';

import '../core/colors.dart';
import '../core/text_styles.dart';
import '../widgets/custom_button.dart';

const String _heroImagePath = 'assets/images/gallery (12).webp';


class HeroSection extends StatelessWidget {
  const HeroSection({super.key, this.onBookPressed});

  final VoidCallback? onBookPressed;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final isMobile = width < 800;
    final horizontalPadding = isMobile ? 24.0 : 48.0;

    return SizedBox(
      height: isMobile ? 500 : 700,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            _heroImagePath,
            fit: BoxFit.cover,
            errorBuilder: (_, _, _) => Container(color: AppColors.backgroundLight),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  AppColors.backgroundLight,
                  AppColors.backgroundLight.withValues(alpha: 0.6),
                  Colors.transparent,
                ],
              ),
            ),
          ),

          // Contenido
          Padding(
            padding: EdgeInsets.fromLTRB(horizontalPadding, 48, horizontalPadding, 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _Badge(text: 'NJ Premier Event Stylists'),
                const SizedBox(height: 16),
                Text(
                  'Magic Party',
                  style: AppTextStyles.h1.copyWith(fontSize: isMobile ? 48 : 65),
                ),
                const SizedBox(height: 24),
                CustomButton(
                  text: 'Book Your Event',
                  onPressed: onBookPressed ?? () {},
                  icon: Icons.calendar_today,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Badge extends StatelessWidget {
  const _Badge({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.glass,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.auto_awesome, size: 18, color: AppColors.primary),
          const SizedBox(width: 8),
          Text(
            text,
            style: AppTextStyles.label.copyWith(
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
