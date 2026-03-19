import 'package:flutter/material.dart';

enum DeviceSize { phoneSmall, phoneLarge, tablet }

class Responsive {
  static DeviceSize sizeOf(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    if (w >= 768) return DeviceSize.tablet;
    if (w >= 380) return DeviceSize.phoneLarge; // e.g., iPhone 15 Pro
    return DeviceSize.phoneSmall;               // ~360px Android std
  }

  static int homeGridColumns(BuildContext context) {
    switch (sizeOf(context)) {
      case DeviceSize.tablet:
        return 3;
      case DeviceSize.phoneLarge:
        return 2;
      case DeviceSize.phoneSmall:
        return 2;
    }
  }

  static double maxContentWidth(BuildContext context) {
    final device = sizeOf(context);
    switch (device) {
      case DeviceSize.tablet:
        return 640; // keep nice column on 768px+
      default:
        return double.infinity;
    }
  }
}