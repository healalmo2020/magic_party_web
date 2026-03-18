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
            Semantics(label: 'Ir a inicio', button: true, child: ListTile(
              title: const Text('Home'),
              onTap: () => _navigateAndClose(context, ''),
            )),
            Semantics(label: 'Ir a servicios', button: true, child: ListTile(
              title: const Text('Services'),
              onTap: () => _navigateAndClose(context, 'services'),
            )),
            Semantics(label: 'Ir a galería', button: true, child: ListTile(
              title: const Text('Gallery'),
              onTap: () => _navigateAndClose(context, 'gallery'),
            )),
            Semantics(label: 'Ir a paquetes', button: true, child: ListTile(
              title: const Text('Packages'),
              onTap: () => _navigateAndClose(context, 'packages'),
            )),
            Semantics(label: 'Ir a contacto', button: true, child: ListTile(
              title: const Text('Contact'),
              onTap: () => _navigateAndClose(context, 'contact'),
            )),
            const Spacer(),
            CustomButton(
              text: 'Book Now',
              onPressed: () => _navigateAndClose(context, 'booking'),
              semanticsLabel: 'Ir a reservar evento',
            ),
          ],
        ),
      ),
    );
  }
}
