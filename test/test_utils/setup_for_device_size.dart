import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';

import 'device_size.dart';

Future<void> setUpForDeviceSize(WidgetTester tester, DeviceSize deviceSize) =>
    tester.binding.setSurfaceSize(
      Size(
        deviceSize.width,
        deviceSize.height,
      ),
    );
