import 'package:flutter/material.dart';
import 'package:nhtelwebsite/constants/constants.dart';
import 'package:nhtelwebsite/helpers/enums/enum_icons.dart';
import 'package:nhtelwebsite/helpers/enums/enum_images.dart';
import 'package:nhtelwebsite/helpers/responsive.dart';
import 'package:nhtelwebsite/widgets/section_title.dart';

class LocalizationSection extends StatelessWidget {
  const LocalizationSection({super.key});

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
            padding: EdgeInsets.only(
                left: ResponsiveWidget.isSmallScreen(context) ? 20 : 0,
                top: ResponsiveWidget.isSmallScreen(context) ? 20 : 40),
            child: SizedBox(
              width: ResponsiveWidget.isSmallScreen(context)
                  ? screenSize.width - screenSize.width * 0.3
                  : 485,
              height: 50,
              child: SectionTitle(
                sectionTitle: LOCALIZATIONTITLE,
                sectionIconUri: EnumIcons.location.uri,
                width: ResponsiveWidget.isSmallScreen(context) ? 40 : 50,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: screenSize.height - screenSize.height * 0.8,
                width: screenSize.width - screenSize.width * 0.2,
                child: Stack(
                  children: [
                    Text(
                      LOCALIZATIONDESCRIPTION,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 1
                          ..color = Colors.black,
                      ),
                    ),
                    Text(
                      LOCALIZATIONDESCRIPTION,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: screenSize.height - screenSize.height * 0.8,
                      width: screenSize.width - screenSize.width * 0.6,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(EnumImages.google.uri),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height - screenSize.height * 0.9,
                      width: screenSize.width - screenSize.width * 0.7,
                      child: Stack(
                        children: [
                          Text(
                            ADDRESSDESCRIPTION,
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 1
                                ..color = Colors.black,
                            ),
                          ),
                          Text(
                            ADDRESSDESCRIPTION,
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screenSize.height - screenSize.height * 0.9,
                      width: screenSize.width - screenSize.width * 0.2,
                      child: Stack(
                        children: [
                          Text(
                            CONTACTSDESCRIPTION,
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 1
                                ..color = Colors.black,
                            ),
                          ),
                          Text(
                            CONTACTSDESCRIPTION,
                            style: Theme.of(context).textTheme.headline5,
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
