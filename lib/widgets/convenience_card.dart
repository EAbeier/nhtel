import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nhtelwebsite/constants/constants.dart';
import 'package:nhtelwebsite/helpers/enums/enum_icons.dart';
import 'package:nhtelwebsite/helpers/responsive.dart';
import 'package:nhtelwebsite/helpers/style.dart';

class ConvenienceCard extends StatelessWidget {
  const ConvenienceCard({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: ResponsiveWidget.isSmallScreen(context)
          ? screenSize.height - screenSize.height * 0.2
          : screenSize.height - screenSize.height * 0.4,
      width: ResponsiveWidget.isSmallScreen(context)
          ? screenSize.width - screenSize.width * 0.2
          : screenSize.width - screenSize.width * 0.4,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: ResponsiveWidget.isSmallScreen(context)
                      ? screenSize.height - screenSize.height * 0.9
                      : 60,
                  child: SvgPicture.asset(
                    EnumIcons.tv.uri,
                    semanticsLabel: 'tv icon',
                  ),
                ),
                SizedBox(
                  height: 150,
                  width: 200,
                  child: Text(
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                    CONVENIENCETVDESC,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
                SizedBox(
                  height: ResponsiveWidget.isSmallScreen(context)
                      ? screenSize.height - screenSize.height * 0.9
                      : 60,
                  child: SvgPicture.asset(
                    EnumIcons.work.uri,
                    semanticsLabel: 'work icon',
                  ),
                ),
                SizedBox(
                  height: 150,
                  width: 200,
                  child: Text(
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                    CONVENIENCESWORKDESC,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: ResponsiveWidget.isSmallScreen(context)
                      ? screenSize.height - screenSize.height * 0.9
                      : 60,
                  child: SvgPicture.asset(
                    EnumIcons.wifiAccommodations.uri,
                    semanticsLabel: 'wifi icon',
                  ),
                ),
                SizedBox(
                  height: 150,
                  width: 200,
                  child: Text(
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                    CONVENIENCESWIFIDESC,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
                SizedBox(
                  height: ResponsiveWidget.isSmallScreen(context)
                      ? screenSize.height - screenSize.height * 0.9
                      : 60,
                  child: SvgPicture.asset(
                    EnumIcons.location.uri,
                    semanticsLabel: 'location icon',
                  ),
                ),
                SizedBox(
                  height: 150,
                  width: 200,
                  child: Text(
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                    CONVENIENCESLOCATIONDESC,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: ResponsiveWidget.isSmallScreen(context)
                      ? screenSize.height - screenSize.height * 0.9
                      : 60,
                  child: SvgPicture.asset(
                    EnumIcons.mug.uri,
                    semanticsLabel: 'mug icon',
                  ),
                ),
                SizedBox(
                  height: 150,
                  width: 200,
                  child: Text(
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                    CONVENIENCESCAFEDESC,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
                //Padding(padding: EdgeInsets.only(top: 80)),
                SizedBox(
                  height: ResponsiveWidget.isSmallScreen(context)
                      ? screenSize.height - screenSize.height * 0.9
                      : 60,
                  child: SvgPicture.asset(
                    EnumIcons.attendance.uri,
                    semanticsLabel: '24/7 icon',
                  ),
                ),
                SizedBox(
                  height: 150,
                  width: 200,
                  child: Text(
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                    CONVENIENCESATTENDANCEDESC,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
