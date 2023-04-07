import 'package:coloring_app/app.dart';
import 'package:coloring_app/config/flavors/flavors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  testWidgets('brush pick test', (widgetTester) async {
    await widgetTester.pumpWidget(
      const ProviderScope(
        child: MyApp(
          flavor: AppFlavor.dev,
        ),
      ),
    );
    expect(find.byIcon(Icons.brush), findsOneWidget);

    await widgetTester.tap(find.byIcon(Icons.format_paint_rounded));
    await widgetTester.pump();
  });
}
