import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/colors.dart';
import 'pages/landing_page.dart';

void main() {
  runApp(const MagicPartyApp());
}

class MagicPartyApp extends StatelessWidget {
  const MagicPartyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magic Party',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const LandingPage(),
    );
  }
}
