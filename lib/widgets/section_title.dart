import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nhtelwebsite/helpers/responsive.dart';

class SectionTitle extends StatelessWidget {
  final String sectionTitle;
  final String sectionIconUri;
  final double height;
  final double width;

  const SectionTitle({
    Key? key,
    required this.sectionTitle,
    required this.sectionIconUri,
    this.height = 40,
    this.width = 40,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
          ? MainAxisAlignment.start
          : MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: width,
          height: height,
          child: SvgPicture.asset(
            sectionIconUri,
            semanticsLabel: '$sectionTitle icon',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: ResponsiveWidget.isSmallScreen(context) ? 8.0 : 0.0),
          child: Stack(
            children: [
              Text(
                sectionTitle,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: ResponsiveWidget.isSmallScreen(context) ? 25 : 48,
                  fontWeight: FontWeight.w700,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 1
                    ..color = Colors.black,
                ),
              ),
              Text(
                sectionTitle,
                style: ResponsiveWidget.isSmallScreen(context)
                    ? Theme.of(context).textTheme.headline6
                    : Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
