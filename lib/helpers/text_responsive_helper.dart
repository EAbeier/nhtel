import 'package:flutter/material.dart';

class TextResponsiveHelper {
  static TextStyle? getBodyFontSize(BuildContext ctx, Size screenSize) {
    if (screenSize.width > 1100 || screenSize.height > 1100) {
      return Theme.of(ctx).textTheme.headline4;
    }
    return Theme.of(ctx).textTheme.caption;
  }

  static TextStyle? getIconFontSize(BuildContext ctx, Size screenSize) {
    if (screenSize.width > 1100 || screenSize.height > 1100) {
      return Theme.of(ctx).textTheme.headline5;
    }
    return Theme.of(ctx).textTheme.caption;
  }

  static double getFontSize(BuildContext ctx, Size screenSize) {
    if (screenSize.width > 1100 || screenSize.height > 1100) {
      return 24;
    }
    return 12;
  }

  static double getLocationFontSize(BuildContext ctx, Size screenSize) {
    if (screenSize.width > 1100 || screenSize.height > 1100) {
      return 24;
    }
    return 12;
  }

  static TextStyle? getLocationTextTheme(BuildContext ctx, Size screenSize) {
    if (screenSize.width > 1100 || screenSize.height > 1100) {
      return Theme.of(ctx).textTheme.headline4;
    }
    return Theme.of(ctx).textTheme.caption;
  }
}
