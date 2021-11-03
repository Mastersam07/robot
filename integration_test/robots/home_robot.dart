import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:robot/utils/strings.dart';

class HomeRobot {
  const HomeRobot(this.tester);

  final WidgetTester tester;

  Future<void> findTitle() async {
    await tester.pumpAndSettle();
    expect(find.text(AppStrings.title), findsOneWidget);
    sleep(const Duration(seconds: 2));
  }

  Future<void> findCounterInfo() async {
    await tester.pumpAndSettle();
    expect(find.text(AppStrings.counterInfo), findsOneWidget);
    sleep(const Duration(seconds: 2));
  }

  Future<void> clickIncrementButton() async {
    final btnFinder = find.byKey(const Key(AppStrings.incrementBtn));

    await tester.ensureVisible(btnFinder);
    await tester.tap(btnFinder);

    await tester.pumpAndSettle();
  }
}