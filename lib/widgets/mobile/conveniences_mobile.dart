import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nhtelwebsite/helpers/text_responsive_helper.dart';

class ConveniencesMobile extends StatelessWidget {
  final String iconUri;
  final String accommodationDesc;
  const ConveniencesMobile({
    Key? key,
    required this.iconUri,
    required this.accommodationDesc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: (screenSize.height - (screenSize.height * 0.4)) / 3,
      width: (screenSize.width - (screenSize.height * 0.1)) / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            iconUri,
            semanticsLabel: '$accommodationDesc icon',
          ),
          Text(
            textAlign: TextAlign.center,
            accommodationDesc,
            style: TextResponsiveHelper.getIconFontSize(context, screenSize),
          )
        ],
      ),
    );
  }
}
