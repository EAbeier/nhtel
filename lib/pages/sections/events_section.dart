import 'package:flutter/material.dart';
import 'package:nhtelwebsite/constants/constants.dart';
import 'package:nhtelwebsite/helpers/enums/enum_icons.dart';
import 'package:nhtelwebsite/helpers/enums/enum_images.dart';
import 'package:nhtelwebsite/helpers/responsive.dart';
import 'package:nhtelwebsite/widgets/section_title.dart';

class EventsSection extends StatelessWidget {
  const EventsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              EnumImages.events.uri,
            ),
            fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: ResponsiveWidget.isSmallScreen(context) ? 20 : 0,
                  top: ResponsiveWidget.isSmallScreen(context) ? 20 : 40,
                  bottom: ResponsiveWidget.isSmallScreen(context) ? 20 : 40,
                ),
                child: SizedBox(
                  width: ResponsiveWidget.isSmallScreen(context)
                      ? screenSize.width - screenSize.width * 0.35
                      : 485,
                  height: 50,
                  child: SectionTitle(
                    sectionTitle: EVENTSTITLE,
                    sectionIconUri: EnumIcons.party.uri,
                    width: ResponsiveWidget.isSmallScreen(context) ? 40 : 50,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: screenSize.height - screenSize.height * 0.2,
                  width: screenSize.width - screenSize.width * 0.4,
                  child: Stack(
                    children: [
                      Text(
                        EVENTSDESCRIPTION,
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 1
                            ..color = Colors.black,
                        ),
                      ),
                      Text(
                        EVENTSDESCRIPTION,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
