import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nhtelwebsite/constants/constants.dart';
import 'package:nhtelwebsite/helpers/enums/enum_icons.dart';
import 'package:nhtelwebsite/helpers/enums/enum_images.dart';
import 'package:nhtelwebsite/helpers/responsive.dart';
import 'package:nhtelwebsite/helpers/style.dart';
import 'package:nhtelwebsite/models/accommodation_images.dart';
import 'package:nhtelwebsite/models/conveniences.dart';
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
  final ScrollController _controllerTitle = ScrollController();
  final ScrollController _controllerConveniences = ScrollController();
  var controlVariable = 0;

  double _width = 100.0;
  double _widthTitle = 100.00;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _width = MediaQuery.of(context).size.width;
    _widthTitle = screenSize.width - screenSize.width * 0.8;
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
                    width: screenSize.width - screenSize.width * 0.5,
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
                        SizedBox(
                          height: screenSize.height - screenSize.height * 0.1,
                          width: screenSize.width - screenSize.width * 0.7,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(15),
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                ),
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: cardColor,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(100),
                                    ),
                                  ),
                                  child: ScrollConfiguration(
                                    behavior: ScrollConfiguration.of(context)
                                        .copyWith(scrollbars: false),
                                    child: ListView.builder(
                                      scrollDirection: Axis.vertical,
                                      controller: _controllerIcons,
                                      itemCount: NumberOfPersonIcons
                                              .getNumberOfPersonIcons()
                                          .length,
                                      itemBuilder: (BuildContext _, int index) {
                                        return Container(
                                          padding: EdgeInsets.all(8),
                                          height: 70,
                                          width: 70,
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
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 15, top: 15),
                                      height: 40,
                                      width: _widthTitle,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        controller: _controllerTitle,
                                        itemCount:
                                            TitleAndDescriptions.getTitles()
                                                .length,
                                        itemBuilder:
                                            (BuildContext _, int index) {
                                          return Container(
                                            height: 40,
                                            width: _widthTitle,
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
                                    SizedBox(
                                      height: 100,
                                      width: _widthTitle,
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.clip,
                                        TitleAndDescriptions.getDescriptions()[
                                            controlVariable],
                                        style:
                                            Theme.of(context).textTheme.caption,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 100,
                                      width: _widthTitle,
                                      child: ListView.builder(
                                        controller: _controllerConveniences,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: ConveniencesWidgets
                                                .getConveniencesWidgets()
                                            .length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return ConveniencesWidgets
                                              .getConveniencesWidgets()[index];
                                        },
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
          _animateTextToIndex(controlVariable);
          _animateConvenienceToIndex(controlVariable);
        });
      }
      return;
    }
    if (controlVariable < 7) {
      setState(() {
        controlVariable++;
        _animateToIndex(controlVariable);
        _animateIconToIndex(controlVariable);
        _animateTextToIndex(controlVariable);
        _animateConvenienceToIndex(controlVariable);
      });
    }
    return;
  }

  void _animateToIndex(int index) {
    _controller.animateTo(
      index * _width,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
  }

  void _animateIconToIndex(int index) {
    _controllerIcons.animateTo(
      index * 70,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
  }

  void _animateTextToIndex(int index) {
    _controllerTitle.animateTo(
      index * _widthTitle,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
  }

  void _animateConvenienceToIndex(int index) {
    _controllerConveniences.animateTo(
      index * _widthTitle,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
  }
}
