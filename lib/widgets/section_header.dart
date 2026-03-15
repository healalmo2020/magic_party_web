import 'package:flutter/material.dart';

import '../core/colors.dart';
import '../core/text_styles.dart';

/// Encabezado reutilizable para secciones: título, línea dorada y subtítulo opcional.
class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
    this.subtitle,
    this.titleStyle,
    this.subtitleStyle,
    this.showDivider = true,
  });

  final String title;
  final String? subtitle;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final bool showDivider;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: titleStyle ?? AppTextStyles.heading.copyWith(color: AppColors.primaryPink),
          textAlign: TextAlign.center,
        ),
        if (showDivider) ...[
          const SizedBox(height: 12),
          Container(
            height: 4,
            width: 60,
            decoration: BoxDecoration(
              color: AppColors.accentGold,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ],
        if (subtitle != null) ...[
          SizedBox(height: showDivider ? 16 : 8),
          Text(
            subtitle!,
            style: subtitleStyle ?? AppTextStyles.bodySmall.copyWith(color: Colors.grey.shade600),
            textAlign: TextAlign.center,
          ),
        ],
      ],
    );
  }
}
