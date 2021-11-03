import 'package:flutter_test/flutter_test.dart';
import 'package:robot/main.dart' as app;
import 'robots/home_robot.dart';

void main() {
  HomeRobot homeRobot;

  group('e2e test', () {
    testWidgets('Testing the whole app', (WidgetTester tester) async {
      app.main();
      homeRobot = HomeRobot(tester);
      await homeRobot.findTitle();
      await homeRobot.findCounterInfo();
      await homeRobot.clickIncrementButton();
    });
  });
}