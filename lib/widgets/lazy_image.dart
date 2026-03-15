import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../core/colors.dart';

/// Umbral de visibilidad (0–1) a partir del cual se carga la imagen.
const double _kVisibilityThreshold = 0.05;

/// Imagen que solo se carga cuando entra en el viewport (lazy loading).
class LazyImage extends StatefulWidget {
  const LazyImage({
    super.key,
    required this.imagePath,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
    this.cacheWidth,
    this.cacheHeight,
    this.errorBuilder,
    this.placeholder,
  });

  final String imagePath;
  final BoxFit fit;
  final double? width;
  final double? height;
  final int? cacheWidth;
  final int? cacheHeight;
  final Widget Function(BuildContext, Object, StackTrace?)? errorBuilder;
  final Widget? placeholder;

  @override
  State<LazyImage> createState() => _LazyImageState();
}

class _LazyImageState extends State<LazyImage> {
  bool _visible = false;

  void _onVisibilityChanged(VisibilityInfo info) {
    if (_visible) return;
    if (info.visibleFraction >= _kVisibilityThreshold) {
      setState(() => _visible = true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key('lazy_${widget.imagePath}'),
      onVisibilityChanged: _onVisibilityChanged,
      child: _visible ? _buildImage() : _buildPlaceholder(),
    );
  }

  Widget _buildPlaceholder() {
    final content = widget.placeholder ??
        Container(
          color: AppColors.backgroundLight,
          child: const Center(
            child: SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(strokeWidth: 2, color: AppColors.primary),
            ),
          ),
        );
    if (widget.width != null || widget.height != null) {
      return SizedBox(width: widget.width, height: widget.height, child: content);
    }
    return SizedBox.expand(child: content);
  }

  Widget _buildImage() {
    return Image.asset(
      widget.imagePath,
      fit: widget.fit,
      width: widget.width,
      height: widget.height,
      cacheWidth: widget.cacheWidth,
      cacheHeight: widget.cacheHeight,
      errorBuilder: widget.errorBuilder ??
          (_, __, ___) => Container(
                width: widget.width,
                height: widget.height,
                color: AppColors.primary.withValues(alpha: 0.1),
                child: const Icon(Icons.broken_image, color: AppColors.primary, size: 48),
              ),
    );
  }
}
