import 'package:flutter/material.dart';

import '../core/colors.dart';
import '../core/text_styles.dart';
import '../widgets/section_header.dart';

const List<({IconData icon, String title, String description})> _services = [
  (icon: Icons.celebration, title: 'Balloon Decorations', description: 'Custom arches and pillars that wow.'),
  (icon: Icons.child_care, title: 'Baby Showers', description: 'Elegant themes for your little one.'),
  (icon: Icons.cake, title: 'Birthdays', description: 'Fun and festive party setups for all ages.'),
  (icon: Icons.business, title: 'Corporate Events', description: 'Professional decor for business celebrations.'),
  (icon: Icons.restaurant, title: 'Catering Services', description: 'Delicious menus and gourmet displays for every occasion.'),
  (icon: Icons.auto_awesome, title: 'Custom Themes', description: 'Tailored designs for your unique vision.'),
];

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final horizontalPadding = width < 800 ? 24.0 : 48.0;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 48, horizontal: horizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SectionHeader(
            title: 'Our Enchanting Services',
            subtitle: 'Tailored luxury decorations that bring life to every celebration.',
          ),
          const SizedBox(height: 32),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: _services
                .map(
                  (s) => SizedBox(
                    width: 200,
                    child: _ServiceCard(
                      icon: s.icon,
                      title: s.title,
                      description: s.description,
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class _ServiceCard extends StatefulWidget {
  const _ServiceCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  final IconData icon;
  final String title;
  final String description;

  @override
  State<_ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<_ServiceCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(12),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: AppColors.backgroundLight,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: _hovered ? AppColors.primaryPink : AppColors.primaryPink.withValues(alpha: 0.1),
              width: 1,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  color: AppColors.primaryPink.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(widget.icon, color: AppColors.primaryPink, size: 32),
              ),
              const SizedBox(height: 16),
              Text(
                widget.title,
                style: AppTextStyles.h4,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                widget.description,
                style: AppTextStyles.bodySmall.copyWith(color: Colors.grey.shade600),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
