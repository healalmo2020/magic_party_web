import 'dart:ui' show PointerDeviceKind;

import 'package:flutter/material.dart';

import '../core/colors.dart';

/// Permite arrastrar el [PageView] con ratón, trackpad y táctil (web, escritorio y móvil).
class _GalleryScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.trackpad,
      };
}

/// Lightbox con deslizamiento horizontal entre imágenes de un mismo paquete.
class PackageGalleryViewer extends StatefulWidget {
  const PackageGalleryViewer({
    super.key,
    required this.imagePaths,
    this.initialPage = 0,
  });

  final List<String> imagePaths;
  final int initialPage;

  static void show(
    BuildContext context, {
    required List<String> imagePaths,
    int initialPage = 0,
  }) {
    if (imagePaths.isEmpty) return;
    showDialog<void>(
      context: context,
      barrierColor: Colors.black87,
      barrierDismissible: true,
      builder: (ctx) => Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.zero,
        child: PackageGalleryViewer(
          imagePaths: imagePaths,
          initialPage: initialPage,
        ),
      ),
    );
  }

  @override
  State<PackageGalleryViewer> createState() => _PackageGalleryViewerState();
}

class _PackageGalleryViewerState extends State<PackageGalleryViewer> {
  late final PageController _pageController;
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    final last = widget.imagePaths.length - 1;
    final safeInitial = widget.initialPage.clamp(0, last < 0 ? 0 : last);
    _currentIndex = safeInitial;
    _pageController = PageController(initialPage: safeInitial);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final paths = widget.imagePaths;
    final total = paths.length;

    return ScrollConfiguration(
      behavior: _GalleryScrollBehavior(),
      child: SizedBox.expand(
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            PageView.builder(
              controller: _pageController,
              itemCount: total,
              physics: const PageScrollPhysics(),
              onPageChanged: (i) => setState(() => _currentIndex = i),
              itemBuilder: (context, index) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 56),
                    child: Image.asset(
                      paths[index],
                      fit: BoxFit.contain,
                      errorBuilder: (_, _, _) => const Icon(
                        Icons.broken_image,
                        color: Colors.white54,
                        size: 80,
                      ),
                    ),
                  ),
                );
              },
            ),
            Positioned(
              top: 16,
              right: 16,
              child: IconButton(
                icon: const Icon(Icons.close, color: Colors.white, size: 28),
                tooltip: MaterialLocalizations.of(context).closeButtonTooltip,
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            Positioned(
              bottom: 24,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.chevron_left,
                            color: _currentIndex > 0 ? Colors.white : Colors.white24,
                            size: 32,
                          ),
                          onPressed: _currentIndex > 0
                              ? () => _pageController.previousPage(
                                    duration: const Duration(milliseconds: 280),
                                    curve: Curves.easeOutCubic,
                                  )
                              : null,
                          tooltip: 'Anterior',
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            '${_currentIndex + 1} / $total',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              shadows: [Shadow(blurRadius: 8, color: Colors.black54)],
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.chevron_right,
                            color: _currentIndex < total - 1 ? Colors.white : Colors.white24,
                            size: 32,
                          ),
                          onPressed: _currentIndex < total - 1
                              ? () => _pageController.nextPage(
                                    duration: const Duration(milliseconds: 280),
                                    curve: Curves.easeOutCubic,
                                  )
                              : null,
                          tooltip: 'Siguiente',
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    IgnorePointer(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: List.generate(
                          total,
                          (i) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 3),
                            child: Container(
                              width: i == _currentIndex ? 18 : 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: i == _currentIndex ? AppColors.primary : Colors.white38,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
