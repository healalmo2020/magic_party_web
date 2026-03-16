import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../core/colors.dart';
import '../core/text_styles.dart';
import '../widgets/custom_button.dart';
import '../widgets/section_header.dart';

const String _instagramMagicPartyNj = 'https://www.instagram.com/magicparty.nj/';
const String _instagramMagicPartyNj2 = 'https://www.instagram.com/magicparty_nj/';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key, this.onBookPressed});

  final VoidCallback? onBookPressed;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final isMobile = width < 800;
    final horizontalPadding = isMobile ? 24.0 : 48.0;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 48, horizontal: horizontalPadding),
      color: AppColors.backgroundDark,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SectionHeader(
            title: 'Ready to start planning?',
            subtitle: "Let's create something unforgettable for your next special occasion in New Jersey.",
            titleStyle: AppTextStyles.heading.copyWith(
              color: AppColors.primaryPink,
              fontSize: isMobile ? 28 : 36,
            ),
            subtitleStyle: AppTextStyles.bodySmall.copyWith(
              color: Colors.white.withValues(alpha: 0.85),
              height: 1.5,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 32),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 24,
            runSpacing: 24,
            children: [
              _ContactLink(
                icon: Icons.phone_iphone,
                label: '(555) 123-4567',
                onTap: () {},
              ),
              _ContactLink(
                icon: Icons.camera_alt,
                label: '@magicparty.nj',
                url: _instagramMagicPartyNj,
              ),
              _ContactLink(
                icon: Icons.camera_alt,
                label: '@magicparty_nj',
                url: _instagramMagicPartyNj2,
              ),
            ],
          ),
          const SizedBox(height: 40),
          CustomButton(
            text: 'BOOK YOUR EVENT NOW',
            onPressed: onBookPressed ?? () {},
            semanticsLabel: 'Ir a reservar evento',
          ),
        ],
      ),
    );
  }
}

class _ContactLink extends StatefulWidget {
  const _ContactLink({
    required this.icon,
    required this.label,
    this.onTap,
    this.url,
  }) : assert(onTap != null || url != null, 'Provide onTap or url');

  final IconData icon;
  final String label;
  final VoidCallback? onTap;
  final String? url;

  @override
  State<_ContactLink> createState() => _ContactLinkState();
}

class _ContactLinkState extends State<_ContactLink> {
  bool _hovered = false;

  Future<void> _handleTap() async {
    if (widget.url != null) {
      final uri = Uri.parse(widget.url!);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      }
    } else {
      widget.onTap?.call();
    }
  }

  @override
  Widget build(BuildContext context) {
    final isLink = widget.url != null;
    final semanticLabel = isLink
        ? 'Abrir enlace ${widget.label}'
        : 'Contactar: ${widget.label}';
    return Semantics(
      label: semanticLabel,
      button: true,
      link: isLink,
      child: MouseRegion(
        onEnter: (_) => setState(() => _hovered = true),
        onExit: (_) => setState(() => _hovered = false),
        child: GestureDetector(
          onTap: _handleTap,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                widget.icon,
                size: 32,
                color: _hovered ? AppColors.primary : Colors.white,
              ),
              const SizedBox(width: 12),
              Text(
                widget.label,
                style: AppTextStyles.display.copyWith(
                  color: _hovered ? AppColors.primary : Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
