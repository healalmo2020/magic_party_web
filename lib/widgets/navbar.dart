import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/colors.dart';
import '../core/text_styles.dart';
import 'custom_button.dart';
import 'full_screen_image.dart';

const String _logoPath = 'assets/images/logo_official.webp';

const List<({String label, String id})> _navItems = [
  (label: 'Home', id: ''),
  (label: 'Services', id: 'services'),
  (label: 'Gallery', id: 'gallery'),
  (label: 'Packages', id: 'packages'),
  (label: 'Contact', id: 'contact'),
];

class Navbar extends StatelessWidget {
  const Navbar({super.key, this.onNavigate, this.onBookPressed});

  final void Function(String sectionId)? onNavigate;
  final VoidCallback? onBookPressed;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final isMobile = width < 900;

    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          decoration: BoxDecoration(
            color: AppColors.glass,
            border: Border(
              bottom: BorderSide(color: AppColors.primary.withValues(alpha:0.1)),
            ),
          ),
          child: Row(
            children: [
              _buildLogo(context),
              if (!isMobile) ...[
                const SizedBox(width: 12),
                Text(
                  'Magic Party',
                  style: AppTextStyles.displaySmall.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.primary,
                  ),
                ),
                const Spacer(),
                _NavLinks(onNavigate: onNavigate),
                const SizedBox(width: 16),
                _BookNowButton(compact: true, onPressed: onBookPressed),
              ] else ...[
                const Spacer(),
                Semantics(
                  label: 'Abrir menú de navegación',
                  button: true,
                  child: IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () => Scaffold.of(context).openDrawer(),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogo(BuildContext context) {
    return Semantics(
      label: 'Ver logo en pantalla completa',
      button: true,
      child: GestureDetector(
        onTap: () => FullScreenImageViewer.show(context, _logoPath),
        child: MouseRegion(
        cursor: SystemMouseCursors.zoomIn,
        child: Image.asset(
          _logoPath,
          height: 100,
          fit: BoxFit.contain,
          errorBuilder: (_, _, _) => Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha:0.2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.celebration, color: AppColors.primary),
          ),
        ),
      ),
    ),
    );
  }
}

class _NavLinks extends StatelessWidget {
  const _NavLinks({this.onNavigate});

  final void Function(String sectionId)? onNavigate;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: _navItems
          .map(
            (item) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: _NavLink(item: item, onNavigate: onNavigate),
            ),
          )
          .toList(),
    );
  }
}

class _NavLink extends StatefulWidget {
  const _NavLink({required this.item, this.onNavigate});

  final ({String label, String id}) item;
  final void Function(String sectionId)? onNavigate;

  @override
  State<_NavLink> createState() => _NavLinkState();
}

class _NavLinkState extends State<_NavLink> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final sectionLabel = widget.item.label == 'Home'
        ? 'Ir a inicio'
        : 'Ir a ${widget.item.label.toLowerCase()}';
    return Semantics(
      label: sectionLabel,
      button: true,
      child: MouseRegion(
        onEnter: (_) => setState(() => _hovered = true),
        onExit: (_) => setState(() => _hovered = false),
        child: GestureDetector(
          onTap: () => widget.onNavigate?.call(widget.item.id),
          child: Text(
            widget.item.label,
            style: AppTextStyles.label.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: _hovered ? AppColors.primary : null,
            ),
          ),
        ),
      ),
    );
  }
}

class _BookNowButton extends StatelessWidget {
  const _BookNowButton({this.compact = false, this.onPressed});

  final bool compact;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    if (compact) {
      return Semantics(
        label: 'Ir a reservar evento',
        button: true,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: Colors.white,
            shape: const StadiumBorder(),
            elevation: 4,
            shadowColor: AppColors.primary.withValues(alpha:0.2),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            textStyle: GoogleFonts.plusJakartaSans(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          child: const Text('Book Now'),
        ),
      );
    }
    return CustomButton(
      text: 'Book Now',
      onPressed: onPressed ?? () {},
      semanticsLabel: 'Ir a reservar evento',
    );
  }
}
