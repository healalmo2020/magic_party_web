import 'package:flutter/material.dart';

/// Visor de imagen a pantalla completa (lightbox) con zoom y cierre por tap/ESC.
class FullScreenImageViewer extends StatelessWidget {
  const FullScreenImageViewer({super.key, required this.imagePath});

  final String imagePath;

  static void show(BuildContext context, String imagePath) {
    showDialog(
      context: context,
      barrierColor: Colors.black87,
      barrierDismissible: true,
      builder: (ctx) => Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.zero,
        child: FullScreenImageViewer(imagePath: imagePath),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      behavior: HitTestBehavior.opaque,
      child: SizedBox.expand(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Center(
              child: InteractiveViewer(
                minScale: 0.5,
                maxScale: 4,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                  errorBuilder: (_, _, _) => const Icon(
                    Icons.broken_image,
                    color: Colors.white54,
                    size: 80,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 16,
              right: 16,
              child: IconButton(
                icon: const Icon(Icons.close, color: Colors.white, size: 28),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
