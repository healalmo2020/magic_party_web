// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:magic_party/main.dart';

void main() {
  setUpAll(() {
    // Evita que Google Fonts intente cargar fuentes en el test
    GoogleFonts.config.allowRuntimeFetching = false;
  });

  testWidgets('Magic Party app smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MagicPartyApp());
    await tester.pumpAndSettle(const Duration(seconds: 5));

    expect(find.text('Magic Party'), findsAtLeastNWidgets(1));
  });
}
