import 'package:flutter/material.dart';

import '../core/colors.dart';
import '../sections/hero_section.dart';
import '../widgets/nav_drawer.dart';
import '../widgets/navbar.dart';

// Carga diferida: secciones pesadas o bajo el pliegue (no necesarias en el primer paint)
import '../sections/about_section.dart' deferred as about_section;
import '../sections/booking_section.dart' deferred as booking_section;
import '../sections/contact_section.dart' deferred as contact_section;
import '../sections/gallery_section.dart' deferred as gallery_section;
import '../sections/services_section.dart' deferred as services_section;

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final _heroKey = GlobalKey();
  final _servicesKey = GlobalKey();
  final _galleryKey = GlobalKey();
  final _bookingKey = GlobalKey();
  final _contactKey = GlobalKey();

  late final Future<void> _sectionsLoadFuture;

  @override
  void initState() {
    super.initState();
    _sectionsLoadFuture = _loadDeferredSections();
  }

  Future<void> _loadDeferredSections() async {
    await Future.wait([
      services_section.loadLibrary(),
      gallery_section.loadLibrary(),
      about_section.loadLibrary(),
      booking_section.loadLibrary(),
      contact_section.loadLibrary(),
    ]);
  }

  void _scrollToSection(String id) {
    final key = switch (id) {
      '' => _heroKey,
      'services' => _servicesKey,
      'gallery' => _galleryKey,
      'booking' => _bookingKey,
      'contact' => _contactKey,
      _ => null,
    };
    if (key?.currentContext != null) {
      Scrollable.ensureVisible(key!.currentContext!, alignment: 0.1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(onNavigate: _scrollToSection),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: FutureBuilder<void>(
              future: _sectionsLoadFuture,
              builder: (context, snapshot) {
                final loaded = snapshot.connectionState == ConnectionState.done && !snapshot.hasError;
                return Column(
                  children: [
                    KeyedSubtree(
                      key: _heroKey,
                      child: HeroSection(onBookPressed: () => _scrollToSection('booking')),
                    ),
                    if (loaded) ...[
                      KeyedSubtree(key: _servicesKey, child: services_section.ServicesSection()),
                      KeyedSubtree(key: _galleryKey, child: gallery_section.GallerySection()),
                      about_section.AboutSection(onBookPressed: () => _scrollToSection('booking')),
                      KeyedSubtree(key: _bookingKey, child: booking_section.BookingSection()),
                      KeyedSubtree(
                        key: _contactKey,
                        child: contact_section.ContactSection(onBookPressed: () => _scrollToSection('booking')),
                      ),
                    ] else ...[
                      KeyedSubtree(key: _servicesKey, child: const _SectionPlaceholder()),
                      KeyedSubtree(key: _galleryKey, child: const _SectionPlaceholder()),
                      const _SectionPlaceholder(),
                      KeyedSubtree(key: _bookingKey, child: const _SectionPlaceholder()),
                      KeyedSubtree(key: _contactKey, child: const _SectionPlaceholder()),
                    ],
                  ],
                );
              },
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              bottom: false,
              child: Navbar(
                onNavigate: _scrollToSection,
                onBookPressed: () => _scrollToSection('booking'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Placeholder mientras se cargan las secciones diferidas (reduce parpadeo del layout).
class _SectionPlaceholder extends StatelessWidget {
  const _SectionPlaceholder();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 320,
      child: Center(
        child: RepaintBoundary(
          child: SizedBox(
            width: 32,
            height: 32,
            child: CircularProgressIndicator(strokeWidth: 2, color: AppColors.primary),
          ),
        ),
      ),
    );
  }
}
