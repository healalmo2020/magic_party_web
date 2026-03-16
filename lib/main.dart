import 'package:flutter/material.dart';

import 'core/theme.dart';
import 'pages/landing_page.dart';

void main() {
  runApp(const MagicPartyApp());
}

/// Punto de entrada de la app. El tema y la ruta inicial están centralizados aquí
/// ([core/theme.dart], [LandingPage]).
class MagicPartyApp extends StatelessWidget {
  const MagicPartyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magic Party',
      theme: AppTheme.light,
      home: const LandingPage(),
    );
  }
}
