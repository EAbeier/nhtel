import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:nhtelwebsite/constants/constants.dart';
import 'package:nhtelwebsite/helpers/enums/enum_icons.dart';
import 'package:nhtelwebsite/helpers/enums/enum_images.dart';
import 'package:nhtelwebsite/helpers/style.dart';
import 'package:nhtelwebsite/helpers/text_responsive_helper.dart';
import 'package:nhtelwebsite/widgets/section_title.dart';

class MobileHotelSection extends StatelessWidget {
  const MobileHotelSection({super.key});
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height,
      width: screenSize.width,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              EnumImages.hotel.uri,
            ),
            fit: BoxFit.cover),
      ),
      padding: EdgeInsets.only(
          left: 20, right: 20, top: 20, bottom: screenSize.height * 0.4),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        width: screenSize.width,
        height: screenSize.height * 0.9,
        decoration: BoxDecoration(
          color: cardColor.withOpacity(0.9),
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(
                height: 50,
                width: 290,
                child: SectionTitle(
                  sectionTitle: HOTELTITLE,
                  sectionIconUri: EnumIcons.hotel.uri,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                HOTELDESCRIPTION,
                style:
                    TextResponsiveHelper.getBodyFontSize(context, screenSize),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () => {
                    html.window.open(
                        'https://instagram.com/nhtel.acomodacoes?igshid=YmMyMTA2M2Y=',
                        "_blank")
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          height: 40,
                          width: 40,
                          child: Image.asset(EnumIcons.instagram.uri)),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          'Nhtel',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
