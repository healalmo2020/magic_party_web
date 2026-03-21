import 'package:flutter/material.dart';

import '../core/colors.dart';
import '../core/text_styles.dart';
import '../widgets/package_gallery_viewer.dart';
import '../widgets/section_header.dart';

const _packages = [
  (
    name: 'Bronze Package',
    price: '\$299',
    imagePaths: <String>[
      'assets/images/package_images/bronze_image1.webp',
      'assets/images/package_images/bronze_image2.webp',
      'assets/images/package_images/bronze_image11.webp',
    ],
    highlight: false,
  ),
  (
    name: 'Silver Package',
    price: '\$399',
    imagePaths: <String>[
      'assets/images/package_images/silver_package.webp',
      'assets/images/package_images/silver_image1.webp',
      'assets/images/package_images/silver_image2.webp',
    ],
    highlight: false,
  ),
  (
    name: 'Gold Package',
    price: '\$580',
    imagePaths: <String>[
      'assets/images/package_images/gold_image1.webp',
      'assets/images/package_images/gold_image2.webp',
      'assets/images/package_images/gold_image3.webp',
    ],
    highlight: true,
  ),
];

class PackagesSection extends StatelessWidget {
  const PackagesSection({super.key});

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
            title: 'Packages',
            subtitle: 'Curated balloon decor bundles for every budget.',
          ),
          const SizedBox(height: 32),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: _packages
                .map(
                  (p) => SizedBox(
                    width: 260,
                    child: _PackageCard(
                      name: p.name,
                      price: p.price,
                      imagePaths: p.imagePaths,
                      highlight: p.highlight,
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

class _PackageCard extends StatefulWidget {
  const _PackageCard({
    required this.name,
    required this.price,
    required this.imagePaths,
    required this.highlight,
  });

  final String name;
  final String price;
  final List<String> imagePaths;
  final bool highlight;

  @override
  State<_PackageCard> createState() => _PackageCardState();
}

class _PackageCardState extends State<_PackageCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final borderColor = widget.highlight
        ? AppColors.accentGold
        : AppColors.primaryPink.withValues(alpha: _hovered ? 0.4 : 0.1);

    return Semantics(
      label: '${widget.name}, ${widget.price} package. Abre galería de fotos.',
      button: true,
      child: MouseRegion(
        onEnter: (_) => setState(() => _hovered = true),
        onExit: (_) => setState(() => _hovered = false),
        child: GestureDetector(
          onTap: () => PackageGalleryViewer.show(context, imagePaths: widget.imagePaths),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: AppColors.backgroundLight,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: borderColor, width: widget.highlight ? 2 : 1),
              boxShadow: _hovered
                  ? [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.08),
                        blurRadius: 18,
                        offset: const Offset(0, 8),
                      ),
                    ]
                  : const [],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    widget.imagePaths.first,
                    height: 160,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    cacheWidth: 1200,
                    cacheHeight: 1200,
                    errorBuilder: (_, _, _) => Container(
                      height: 160,
                      color: AppColors.primary.withValues(alpha: 0.1),
                      child: const Icon(Icons.image, color: AppColors.primary),
                    ),
                  ),
                ),
              const SizedBox(height: 16),
              Text(
                widget.name,
                style: AppTextStyles.h4,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                widget.price,
                style: AppTextStyles.displayLarge.copyWith(color: AppColors.primaryPink),
              ),
              const SizedBox(height: 8),
              Text(
                _descriptionFor(widget.name),
                style: AppTextStyles.bodySmall.copyWith(color: Colors.grey.shade600, height: 1.4),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }

  String _descriptionFor(String name) {
    switch (name) {
      case 'Bronze Package':
        return 'Ideal for small birthdays, baby showers or intimate gatherings.';
      case 'Silver Package':
        return 'Our most popular bundle for medium-sized events and family parties.';
      case 'Gold Package':
        return 'Premium experience with statement balloon decor for unforgettable celebrations.';
      default:
        return 'A curated balloon decor experience for your special occasion.';
    }
  }
}

