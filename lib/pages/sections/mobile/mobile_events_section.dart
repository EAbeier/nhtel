import 'package:flutter/material.dart';
import 'package:nhtelwebsite/constants/constants.dart';
import 'package:nhtelwebsite/helpers/enums/enum_icons.dart';
import 'package:nhtelwebsite/helpers/enums/enum_images.dart';
import 'package:nhtelwebsite/helpers/responsive.dart';
import 'package:nhtelwebsite/helpers/text_responsive_helper.dart';
import 'package:nhtelwebsite/widgets/section_title.dart';

class MobileEventsSection extends StatelessWidget {
  const MobileEventsSection({super.key});

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
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 20,
                  bottom: 20,
                ),
                child: SizedBox(
                  width: screenSize.width - screenSize.width * 0.35,
                  height: 50,
                  child: SectionTitle(
                    sectionTitle: EVENTSTITLE,
                    sectionIconUri: EnumIcons.party.uri,
                    width: 40,
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
                SizedBox(
                  height: screenSize.height - screenSize.height * 0.2,
                  width: screenSize.width - screenSize.width * 0.4,
                  child: Stack(
                    children: [
                      Text(
                        EVENTSDESCRIPTION,
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: TextResponsiveHelper.getFontSize(
                              context, screenSize),
                          fontWeight: FontWeight.w700,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 1
                            ..color = Colors.black,
                        ),
                      ),
                      Text(
                        EVENTSDESCRIPTION,
                        style: TextResponsiveHelper.getBodyFontSize(
                            context, screenSize),
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
