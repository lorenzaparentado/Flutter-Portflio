import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_portfolio/detail_page.dart';
import 'package:flutter_portfolio/main.dart';
import 'package:flutter_portfolio/strings.dart';

void main() {
  testWidgets('portfolio renders current content at target viewports',
      (WidgetTester tester) async {
    const viewports = [
      Size(360, 800),
      Size(320, 568),
      Size(480, 320),
      Size(390, 844),
      Size(768, 1024),
      Size(1024, 768),
      Size(1100, 520),
      Size(1200, 480),
      Size(1440, 900),
      Size(1440, 600),
      Size(1920, 1080),
    ];

    for (final viewport in viewports) {
      tester.view.physicalSize = viewport;
      tester.view.devicePixelRatio = 1;
      await tester.pumpWidget(const MyApp());
      await tester.pump();

      expect(find.text('About Me'), findsWidgets);
      expect(find.text('Experience'), findsWidgets);
      expect(find.text('SIG'), findsWidgets);
      expect(find.text('Education'), findsWidgets);
      expect(find.byType(SelectionArea), findsOneWidget);

      Object? exception;
      while ((exception = tester.takeException()) != null) {
        fail('Unexpected layout exception at $viewport: $exception');
      }
    }

    tester.view.resetPhysicalSize();
    tester.view.resetDevicePixelRatio();
  });

  testWidgets('More Details opens the selected full-screen experience page',
      (WidgetTester tester) async {
    tester.view.physicalSize = const Size(1440, 900);
    tester.view.devicePixelRatio = 1;
    await tester.pumpWidget(const MyApp());
    await tester.pump();

    await tester.ensureVisible(find.text('More Details').first);
    await tester.drag(
      find.byType(SingleChildScrollView),
      const Offset(0, 250),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text('More Details').first);
    await tester.pumpAndSettle();

    expect(find.text(AppStrings.experienceDetails.first.title), findsOneWidget);
    expect(find.text(AppStrings.experienceDetails.first.role), findsOneWidget);
    expect(find.text(AppStrings.backToPortfolio), findsOneWidget);

    tester.view.resetPhysicalSize();
    tester.view.resetDevicePixelRatio();
  });

  testWidgets(
      'experience detail pages render without overlap at extreme ratios',
      (WidgetTester tester) async {
    const viewports = [
      Size(320, 568),
      Size(480, 320),
      Size(760, 480),
      Size(1200, 480),
      Size(1920, 1080),
    ];

    for (final viewport in viewports) {
      tester.view.physicalSize = viewport;
      tester.view.devicePixelRatio = 1;
      await tester.pumpWidget(MaterialApp(
        home: DetailPage(detail: AppStrings.experienceDetails.first),
      ));
      await tester.pump();

      expect(
          find.text(AppStrings.experienceDetails.first.title), findsOneWidget);
      expect(find.text(AppStrings.backToPortfolio), findsOneWidget);

      Object? exception;
      while ((exception = tester.takeException()) != null) {
        fail('Unexpected detail-page exception at $viewport: $exception');
      }
    }

    tester.view.resetPhysicalSize();
    tester.view.resetDevicePixelRatio();
  });
}
