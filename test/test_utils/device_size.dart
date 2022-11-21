import 'package:flutter_test/flutter_test.dart';

enum DeviceSize {
  iphone8('iphone_8', 375, 667, 2),
  iphone13('iphone_13', 390, 844, 3),
  iphone13ProMax('iphone_13_pro_max', 428, 926, 3),
  maxHeight('max_height', 428, 3000, 3);

  const DeviceSize(
    this.label,
    this.width,
    this.height,
    this.pixelDensity,
  );

  final String label;
  final double width;
  final double height;
  final double pixelDensity;
}

final ValueVariant<DeviceSize> deviceSizes =
    ValueVariant<DeviceSize>(DeviceSize.values.toSet());
