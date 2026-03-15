import 'package:flutter/material.dart';

import 'custom_button.dart';

/// Drawer de navegación móvil con enlaces a secciones y botón Book Now.
class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key, required this.onNavigate});

  final void Function(String sectionId) onNavigate;

  void _navigateAndClose(BuildContext context, String id) {
    onNavigate(id);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 48, 24, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              title: const Text('Home'),
              onTap: () => _navigateAndClose(context, ''),
            ),
            ListTile(
              title: const Text('Services'),
              onTap: () => _navigateAndClose(context, 'services'),
            ),
            ListTile(
              title: const Text('Gallery'),
              onTap: () => _navigateAndClose(context, 'gallery'),
            ),
            ListTile(
              title: const Text('Contact'),
              onTap: () => _navigateAndClose(context, 'contact'),
            ),
            const Spacer(),
            CustomButton(
              text: 'Book Now',
              onPressed: () => _navigateAndClose(context, 'booking'),
            ),
          ],
        ),
      ),
    );
  }
}
