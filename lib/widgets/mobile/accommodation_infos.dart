import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nhtelwebsite/helpers/text_responsive_helper.dart';

class AccommodationInfos extends StatelessWidget {
  final String iconUri;
  final String accommodationDesc;
  const AccommodationInfos({
    super.key,
    required this.iconUri,
    required this.accommodationDesc,
  });

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: (screenSize.height - (screenSize.height * 0.5)) / 3,
      width: (screenSize.width - (screenSize.height * 0.1)) / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _getIcon(),
          Text(
            textAlign: TextAlign.center,
            accommodationDesc,
            style: TextResponsiveHelper.getIconFontSize(context, screenSize),
          )
        ],
      ),
    );
  }

  Widget _getIcon() {
    if (iconUri == "assets/icons/three_people_superior.png") {
      return Image.asset("assets/icons/three_people_superior.png");
    }

    return SvgPicture.asset(
      iconUri,
      semanticsLabel: '$accommodationDesc icon',
    );
  }
}
