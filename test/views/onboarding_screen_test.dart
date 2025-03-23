import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:starkbid_mobile/views/screens/onboarding/views/onboarding_screen.dart';

void main() {
  group('OnboardingScreen Widget Test', () {
    testWidgets('Renders Buttons Correctly', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: OnboardingScreen()));

      // Verify buttons
      expect(find.byType(ElevatedButton), findsOneWidget);
      expect(find.text('Connect Wallet'), findsOneWidget);
      expect(find.byType(TextButton), findsOneWidget);
      expect(find.text('Other Options'), findsOneWidget);
    });

    testWidgets('Renders Text widgets correctly', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: OnboardingScreen()));

      // Verify text elements
      expect(
          find.text('The Future of NFT Auctions Starts Here'), findsOneWidget);
      expect(
          find.text(
              'Join a next-gen marketplace where art meets competition. Place your bids and own unique digital pieces.'),
          findsOneWidget);
    });
  });
}
