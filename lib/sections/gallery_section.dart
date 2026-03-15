import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../core/colors.dart';
import '../widgets/full_screen_image.dart';
import '../widgets/lazy_image.dart';
import '../widgets/section_header.dart';

const List<String> _galleryImages = [
  'assets/images/gallery (2).webp',
  'assets/images/gallery (3).webp',
  'assets/images/gallery (4).webp',
  'assets/images/gallery (6).webp',
  'assets/images/gallery (7).webp',
  'assets/images/gallery (8).webp',
  'assets/images/gallery (10).webp',
  'assets/images/gallery (11).webp',
  'assets/images/gallery (12).webp',
  'assets/images/gallery (13).webp',
  'assets/images/gallery (14).webp',
  'assets/images/gallery (15).webp',
  'assets/images/gallery (16).webp',
  'assets/images/gallery (17).webp',
  'assets/images/baby_shower_setup.webp',
  'assets/images/balloon_event_setup.webp',
  'assets/images/birthday_balloon_arch.webp',
];

/// Alturas variadas para efecto masonry (índice % 5: 1.0, 1.3, 0.8, 1.1, 1.2)
double _getExtent(int index) {
  const base = 200.0;
  final multipliers = [1.0, 1.3, 0.8, 1.1, 1.2];
  return base * multipliers[index % 5];
}

class GallerySection extends StatelessWidget {
  const GallerySection({super.key});

  int _crossAxisCount(double width) {
    if (width > 1000) return 4;
    if (width > 800) return 3;
    return 2;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final horizontalPadding = width < 800 ? 24.0 : 48.0;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 48, horizontal: horizontalPadding),
      child: CustomScrollView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SectionHeader(
                  title: 'Our Magical Moments',
                  subtitle: 'Latest snapshots from our celebrations',
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.zero,
            sliver: SliverMasonryGrid.count(
              crossAxisCount: _crossAxisCount(width),
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childCount: _galleryImages.length,
              itemBuilder: (context, index) => _GalleryImage(
                path: _galleryImages[index],
                extent: _getExtent(index),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _GalleryImage extends StatefulWidget {
  const _GalleryImage({required this.path, required this.extent});

  final String path;
  final double extent;

  @override
  State<_GalleryImage> createState() => _GalleryImageState();
}

class _GalleryImageState extends State<_GalleryImage> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FullScreenImageViewer.show(context, widget.path),
      child: MouseRegion(
        cursor: SystemMouseCursors.zoomIn,
        onEnter: (_) => setState(() => _hovered = true),
        onExit: (_) => setState(() => _hovered = false),
        child: AnimatedScale(
        scale: _hovered ? 1.05 : 1.0,
        duration: const Duration(milliseconds: 200),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: _hovered ? 0.3 : 0.1),
                blurRadius: _hovered ? 16 : 8,
                offset: Offset(0, _hovered ? 8 : 2),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: SizedBox(
              height: widget.extent,
              width: double.infinity,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  LazyImage(
                    imagePath: widget.path,
                    fit: BoxFit.cover,
                    height: widget.extent,
                    cacheWidth: 600,
                    cacheHeight: 600,
                    errorBuilder: (_, __, ___) => Container(
                      color: AppColors.primary.withValues(alpha: 0.1),
                      child: const Icon(Icons.image, color: AppColors.primary),
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: _hovered ? 1 : 0,
                    duration: const Duration(milliseconds: 200),
                    child: Container(
                      color: AppColors.primary.withValues(alpha: 0.2),
                      child: const Center(
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
    );
  }
}
