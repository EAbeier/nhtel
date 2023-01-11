import 'package:flutter/material.dart';

class TextResponsiveHelper {
  static TextStyle? getBodyFontSize(BuildContext ctx, Size screenSize) {
    if (screenSize.height < 800) {
      return Theme.of(ctx).textTheme.caption;
    }

    if (screenSize.width > 1100 || screenSize.height > 1100) {
      return Theme.of(ctx).textTheme.headline4;
    }
    return Theme.of(ctx).textTheme.subtitle1;
  }

  static TextStyle? getIconFontSize(BuildContext ctx, Size screenSize) {
    if (screenSize.width > 1100 || screenSize.height > 1100) {
      return Theme.of(ctx).textTheme.headline5;
    }
    return Theme.of(ctx).textTheme.caption;
  }

  static double getFontSize(BuildContext ctx, Size screenSize) {
    if (screenSize.height < 800) {
      return 12;
    }

    if (screenSize.width > 1100 || screenSize.height > 1100) {
      return 24;
    }
    return 16;
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
