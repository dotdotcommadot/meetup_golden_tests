import 'package:flutter_test/flutter_test.dart';
import 'package:meetup_golden_tests/src/todo_app.dart';

import 'test_utils/device_size.dart';
import 'test_utils/setup_for_device_size.dart';

void main() {
  testWidgets('Screen matches goldens', (tester) async {
    await setUpForDeviceSize(
      tester,
      deviceSizes.currentValue!,
    );

    await tester.pumpWidget(TodoApp());

    await expectLater(
      find.byType(TodoApp),
      matchesGoldenFile(
          'goldens/my_app_${deviceSizes.currentValue!.label}.png'),
    );
  }, variant: deviceSizes);
}
