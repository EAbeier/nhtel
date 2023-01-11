import 'package:flutter/material.dart';
import 'package:nhtelwebsite/constants/constants.dart';
import 'package:nhtelwebsite/helpers/enums/enum_icons.dart';
import 'package:nhtelwebsite/helpers/enums/enum_images.dart';
import 'package:nhtelwebsite/helpers/responsive.dart';
import 'package:nhtelwebsite/helpers/text_responsive_helper.dart';
import 'package:nhtelwebsite/widgets/convenience_card.dart';
import 'package:nhtelwebsite/widgets/mobile/accommodation_infos.dart';
import 'package:nhtelwebsite/widgets/mobile/conveniences_mobile.dart';
import 'package:nhtelwebsite/widgets/section_title.dart';

class MobileConvenienceSection extends StatelessWidget {
  const MobileConvenienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              EnumImages.conveniences.uri,
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
                  width: screenSize.width - screenSize.width * 0.30,
                  height: 50,
                  child: SectionTitle(
                    sectionTitle: CONVENIENCESTITLE,
                    sectionIconUri: EnumIcons.wifi.uri,
                    width: 40,
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            height: screenSize.height - (screenSize.height * 0.4),
            width: screenSize.width,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ConveniencesMobile(
                          iconUri: EnumIcons.tv.uri,
                          accommodationDesc: 'Tv Smart ou LCD',
                        ),
                        ConveniencesMobile(
                          iconUri: EnumIcons.mug.uri,
                          accommodationDesc: 'Café da Manhã',
                        ),
                        ConveniencesMobile(
                          iconUri: EnumIcons.location.uri,
                          accommodationDesc: 'Boa Localização',
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        ConveniencesMobile(
                          iconUri: EnumIcons.wifiAccommodations.uri,
                          accommodationDesc: 'Wifi',
                        ),
                        ConveniencesMobile(
                          iconUri: EnumIcons.work.uri,
                          accommodationDesc: 'Mesa de Trabalho',
                        ),
                        ConveniencesMobile(
                          iconUri: EnumIcons.attendance.uri,
                          accommodationDesc: 'Sempre Atendendo',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: screenSize.height - screenSize.height * 0.9,
                width: screenSize.width,
                child: Text(
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.center,
                  OBSERVATION,
                  style: TextResponsiveHelper.getIconFontSize(context, screenSize),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
