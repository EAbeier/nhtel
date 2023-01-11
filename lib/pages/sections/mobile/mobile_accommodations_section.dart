import 'package:flutter/material.dart';
import 'package:nhtelwebsite/constants/constants.dart';
import 'package:nhtelwebsite/helpers/enums/enum_icons.dart';
import 'package:nhtelwebsite/helpers/enums/enum_images.dart';
import 'package:nhtelwebsite/helpers/style.dart';
import 'package:nhtelwebsite/widgets/mobile/accommodation_images_mobile.dart';
import 'package:nhtelwebsite/widgets/mobile/accommodation_infos.dart';
import 'package:nhtelwebsite/widgets/section_title.dart';

class MobileAccommodationsSection extends StatelessWidget {
  const MobileAccommodationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final accommodationImages = AccommodationImagesMobile();
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height,
      width: screenSize.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(EnumImages.accommodations.uri),
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
                sectionTitle: ACCOMMODATIONSTITLE,
                sectionIconUri: EnumIcons.bed.uri,
                width: 40,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: screenSize.height - (screenSize.height * 0.3),
            width: screenSize.width,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        AccommodationInfos(
                          iconUri: EnumIcons.twoPeopleSuperior.uri,
                          accommodationDesc: COUPLESUPERIORMOBILE,
                        ),
                        AccommodationInfos(
                          iconUri: EnumIcons.threePeopleSuperior.uri,
                          accommodationDesc: TRIPLECOUPLESUPERIORMOBILE,
                        ),
                        AccommodationInfos(
                          iconUri: EnumIcons.twoPeople.uri,
                          accommodationDesc: DOUBLESINGLESUPERIORMOBILE,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        AccommodationInfos(
                          iconUri: EnumIcons.twoPeopleSuperior.uri,
                          accommodationDesc: COUPLESUPERIORMOBILE,
                        ),
                        AccommodationInfos(
                          iconUri: EnumIcons.threePeopleSuperior.uri,
                          accommodationDesc: TRIPLECOUPLESUPERIORMOBILE,
                        ),
                        AccommodationInfos(
                          iconUri: EnumIcons.twoPeople.uri,
                          accommodationDesc: DOUBLESINGLESUPERIORMOBILE,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: screenSize.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: InkWell(
                          onTap: () =>
                              accommodationImages.makeReservation(context),
                          child: Container(
                            decoration: BoxDecoration(
                              color: secondaryColor,
                              border: Border.all(
                                style: BorderStyle.solid,
                                width: 0.5,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            width: screenSize.width - screenSize.width * 0.2,
                            height: 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Saiba mais +',
                                    style:
                                        Theme.of(context).textTheme.headline5),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
