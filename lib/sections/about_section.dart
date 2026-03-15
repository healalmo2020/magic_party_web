import 'package:flutter/material.dart';

import '../core/colors.dart';
import '../core/text_styles.dart';
import '../widgets/custom_button.dart';
import '../widgets/section_header.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key, this.onBookPressed});

  final VoidCallback? onBookPressed;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final isMobile = width < 800;
    final horizontalPadding = isMobile ? 24.0 : 48.0;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 48, horizontal: horizontalPadding),
      color: AppColors.backgroundLight.withValues(alpha: 0.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SectionHeader(title: 'About Magic Party'),
          const SizedBox(height: 32),
          if (isMobile) ...[
            _AboutContent(onBookPressed: onBookPressed),
          ] else
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/images/balloon_event_setup.webp',
                      height: 300,
                      width: 400,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => Container(
                        height: 300,
                        color: AppColors.primary.withValues(alpha: 0.1),
                        child: const Icon(Icons.image, size: 64, color: AppColors.primary),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 48),
                Flexible(
                  flex: 1,
                  child: _AboutContent(onBookPressed: onBookPressed),
                ),
              ],
            ),
        ],
      ),
    );
  }
}

class _AboutContent extends StatelessWidget {
  const _AboutContent({this.onBookPressed});

  final VoidCallback? onBookPressed;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 500),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "NJ's premier balloon decoration and event planning service. "
            'Bringing elegance and magic to your celebrations since 2018.',
            style: AppTextStyles.body.copyWith(
              color: Colors.grey.shade700,
              height: 1.6,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          Text(
            'From intimate baby showers to grand birthday celebrations, '
            'we turn your vision into a whimsical reality with custom arches, '
            'elegant pillars, and unforgettable setups.',
            style: AppTextStyles.bodySmall.copyWith(
              color: Colors.grey.shade600,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          CustomButton(
            text: 'Book Your Event',
            onPressed: onBookPressed ?? () {},
            icon: Icons.calendar_today,
          ),
        ],
      ),
    );
  }
}

