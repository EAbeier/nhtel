import 'package:flutter/material.dart';
import 'package:nhtelwebsite/constants/constants.dart';
import 'package:nhtelwebsite/helpers/enums/enum_icons.dart';
import 'package:nhtelwebsite/helpers/enums/enum_images.dart';
import 'package:nhtelwebsite/helpers/responsive.dart';
import 'package:nhtelwebsite/helpers/style.dart';
import 'package:nhtelwebsite/widgets/convenience_card.dart';
import 'package:nhtelwebsite/widgets/section_title.dart';

class ConvenienceSection extends StatelessWidget {
  const ConvenienceSection({super.key});

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
                  width: ResponsiveWidget.isSmallScreen(context)
                      ? screenSize.width - screenSize.width * 0.35
                      : 485,
                  height: 50,
                  child: SectionTitle(
                    sectionTitle: CONVENIENCESTITLE,
                    sectionIconUri: EnumIcons.wifi.uri,
                    width: ResponsiveWidget.isSmallScreen(context) ? 40 : 50,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 20,
                width: 600,
                child: Text(
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.center,
                  '*Incluso gratuitamente somente em algumas acomodações, consultar acréscimo.',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  ConvenienceCard(),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
