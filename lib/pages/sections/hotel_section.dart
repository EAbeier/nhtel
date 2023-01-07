import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:nhtelwebsite/constants/constants.dart';
import 'package:nhtelwebsite/helpers/enums/enum_icons.dart';
import 'package:nhtelwebsite/helpers/enums/enum_images.dart';
import 'package:nhtelwebsite/helpers/responsive.dart';
import 'package:nhtelwebsite/helpers/style.dart';
import 'package:nhtelwebsite/widgets/section_title.dart';

class HotelSection extends StatelessWidget {
  const HotelSection({super.key});
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
      padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
      child: Container(
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.symmetric(
          vertical: ResponsiveWidget.isSmallScreen(context)
              ? screenSize.height / 20
              : screenSize.height / 6,
          horizontal: ResponsiveWidget.isSmallScreen(context)
              ? screenSize.width / 8
              : screenSize.width / 4,
        ),
        width: screenSize.width,
        height: ResponsiveWidget.isSmallScreen(context)
            ? screenSize.height * 0.9
            : screenSize.height * 0.6,
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
                style: Theme.of(context).textTheme.headline5,
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
