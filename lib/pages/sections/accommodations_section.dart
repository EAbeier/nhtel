import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nhtelwebsite/constants/constants.dart';
import 'package:nhtelwebsite/helpers/enums/enum_icons.dart';
import 'package:nhtelwebsite/helpers/enums/enum_images.dart';
import 'package:nhtelwebsite/helpers/responsive.dart';
import 'package:nhtelwebsite/helpers/style.dart';
import 'package:nhtelwebsite/models/accommodation_images.dart';
import 'package:nhtelwebsite/models/number_person_icons.dart';
import 'package:nhtelwebsite/models/titles_and_descriptions.dart';
import 'package:nhtelwebsite/widgets/section_title.dart';

class AccommodationsSection extends StatefulWidget {
  const AccommodationsSection({super.key});

  @override
  State<AccommodationsSection> createState() => _AccommodationsSectionState();
}

class _AccommodationsSectionState extends State<AccommodationsSection> {
  final ScrollController _controller = ScrollController();
  final ScrollController _controllerIcons = ScrollController();
  var controlVariable = 0;

  double _width = 100.0;

  void _animateToIndex(int index) {
    _controller.animateTo(
      index * _width,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
  }

  void _animateIconToIndex(int index) {
    _controllerIcons.animateTo(
      index * 80,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _width = MediaQuery.of(context).size.width;
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
            padding: EdgeInsets.only(
                left: ResponsiveWidget.isSmallScreen(context) ? 20 : 0,
                top: ResponsiveWidget.isSmallScreen(context) ? 20 : 40),
            child: SizedBox(
              width: ResponsiveWidget.isSmallScreen(context)
                  ? screenSize.width - screenSize.width * 0.3
                  : 485,
              height: 50,
              child: SectionTitle(
                sectionTitle: ACCOMMODATIONSTITLE,
                sectionIconUri: EnumIcons.bed.uri,
                width: ResponsiveWidget.isSmallScreen(context) ? 40 : 50,
              ),
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: screenSize.height - screenSize.height * 0.2,
                  width: screenSize.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: _controller,
                    itemCount:
                        AccommodationImages.getAccommodationImages().length,
                    itemBuilder: (_, i) {
                      return Padding(
                        padding: EdgeInsets.only(
                            top: 10, bottom: screenSize.height / 4.25),
                        child: Container(
                          height: screenSize.height,
                          width: screenSize.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(AccommodationImages
                                    .getAccommodationImages()[i]),
                                fit: BoxFit.cover),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: screenSize.height - screenSize.height * 0.35,
                    width: screenSize.width - screenSize.width * 0.6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 80,
                          width: 80,
                          child: InkWell(
                            onTap: () => _changeInformations(true),
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Icon(
                                size: 80,
                                Icons.arrow_left_sharp,
                                color: secondaryColor,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: screenSize.height - screenSize.height * 0.2,
                          width: screenSize.width - screenSize.width * 0.8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                ),
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: cardColor,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(100),
                                    ),
                                  ),
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    controller: _controllerIcons,
                                    itemCount: NumberOfPersonIcons
                                            .getNumberOfPersonIcons()
                                        .length,
                                    itemBuilder: (BuildContext _, int index) {
                                      return Container(
                                        padding: EdgeInsets.all(8),
                                        height: 80,
                                        width: 80,
                                        child: NumberOfPersonIcons
                                                        .getNumberOfPersonIcons()[
                                                    index] !=
                                                'assets/icons/three_people_Icon.png'
                                            ? SvgPicture.asset(NumberOfPersonIcons
                                                    .getNumberOfPersonIcons()[
                                                index])
                                            : Image.asset(NumberOfPersonIcons
                                                    .getNumberOfPersonIcons()[
                                                index]),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(20),
                                height: 300,
                                width: 500,
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(50),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      padding:
                                          EdgeInsets.only(left: 15, right: 15),
                                      height: 40,
                                      width: 200,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount:
                                            TitleAndDescriptions.getTitles()
                                                .length,
                                        itemBuilder:
                                            (BuildContext _, int index) {
                                          return Container(
                                            height: 40,
                                            width: 200,
                                            child: Text(
                                              TitleAndDescriptions.getTitles()[
                                                  index],
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle1,
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Container(
                                      height: 180,
                                      width: 200,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.clip,
                                        TitleAndDescriptions.getDescriptions()[
                                            controlVariable],
                                        style:
                                            Theme.of(context).textTheme.caption,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 80,
                          width: 80,
                          child: InkWell(
                            onTap: () => _changeInformations(false),
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Icon(
                                size: 80,
                                Icons.arrow_right_sharp,
                                color: secondaryColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  _changeInformations(bool isReduce) {
    if (isReduce) {
      if (controlVariable != 0) {
        setState(() {
          controlVariable--;
          _animateToIndex(controlVariable);
          _animateIconToIndex(controlVariable);
        });
      }
      return;
    }
    if (controlVariable < AccommodationImages.getAccommodationImages().length) {
      setState(() {
        controlVariable++;
        _animateToIndex(controlVariable);
        _animateIconToIndex(controlVariable);
      });
    }
    return;
  }
}
