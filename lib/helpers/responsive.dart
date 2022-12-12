import 'package:flutter/material.dart';

int smallScreenWidth = 852;
int largeScreenWidth = 1200;

class ResponsiveWidget extends StatelessWidget {
  final Widget largerScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  const ResponsiveWidget(
      {super.key,
      required this.largerScreen,
      this.mediumScreen,
      this.smallScreen});

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < smallScreenWidth;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= smallScreenWidth &&
        MediaQuery.of(context).size.width < largeScreenWidth;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > largeScreenWidth;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var maxWidth = constraints.maxWidth;
        if (maxWidth > largeScreenWidth) {
          return largerScreen;
        } else if (maxWidth >= smallScreenWidth &&
            maxWidth <= largeScreenWidth) {
          mediumScreen ?? largerScreen;
        } else {
          return smallScreen ?? largerScreen;
        }

        return largerScreen;
      },
    );
  }
}
