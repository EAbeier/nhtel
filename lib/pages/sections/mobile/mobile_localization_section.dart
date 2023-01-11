import 'package:flutter/material.dart';
import 'package:nhtelwebsite/constants/constants.dart';
import 'package:nhtelwebsite/helpers/enums/enum_icons.dart';
import 'package:nhtelwebsite/helpers/enums/enum_images.dart';
import 'package:nhtelwebsite/helpers/text_responsive_helper.dart';
import 'package:nhtelwebsite/widgets/section_title.dart';

class MobileLocalizationSection extends StatelessWidget {
  const MobileLocalizationSection({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height,
      width: screenSize.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(EnumImages.localization.uri),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: SizedBox(
              width: screenSize.width - screenSize.width * 0.3,
              height: 50,
              child: SectionTitle(
                sectionTitle: LOCALIZATIONTITLE,
                sectionIconUri: EnumIcons.location.uri,
                width: 40,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: screenSize.height - screenSize.height * 0.7,
                width: screenSize.width - screenSize.width * 0.2,
                child: Stack(
                  children: [
                    Text(
                      LOCALIZATIONDESCRIPTION,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: TextResponsiveHelper.getLocationFontSize(
                            context, screenSize),
                        fontWeight: FontWeight.w700,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 1
                          ..color = Colors.black,
                      ),
                    ),
                    Text(
                      LOCALIZATIONDESCRIPTION,
                      style: TextResponsiveHelper.getLocationTextTheme(
                          context, screenSize),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                  bottom: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: screenSize.height - screenSize.height * 0.8,
                      width: screenSize.width - screenSize.width * 0.2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(EnumImages.google.uri),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screenSize.height - screenSize.height * 0.8,
                      width: screenSize.width - screenSize.width * 0.2,
                      child: Stack(
                        children: [
                          Text(
                            CONTACTSDESCRIPTION,
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize:
                                  TextResponsiveHelper.getLocationFontSize(
                                      context, screenSize),
                              fontWeight: FontWeight.w700,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 1
                                ..color = Colors.black,
                            ),
                          ),
                          Text(
                            CONTACTSDESCRIPTION,
                            style: TextResponsiveHelper.getLocationTextTheme(
                                context, screenSize),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
