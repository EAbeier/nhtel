import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nhtelwebsite/helpers/style.dart';
import 'package:nhtelwebsite/models/accommodation_icons.dart';
import 'package:nhtelwebsite/models/accommodation_images.dart';
import 'package:nhtelwebsite/models/titles_and_descriptions.dart';

class AccommodationImagesMobile {
  final ScrollController _controllerTitle = ScrollController();
  final ScrollController _controllerIcon = ScrollController();
  final ScrollController _controllerText = ScrollController();
  final ScrollController _controllerImage = ScrollController();
  var _titleWidth = 0.0;
  var _textWidth = 0.0;
  var _imageWidth = 0.0;
  var _iconWidth = 0.0;
  var _controlVariable = 0;
  void makeReservation(BuildContext ctx) {
    var screenSize = MediaQuery.of(ctx).size;
    _titleWidth = screenSize.width - screenSize.width * 0.2;
    _iconWidth = screenSize.width - screenSize.width * 0.9;
    _textWidth = (screenSize.width - screenSize.width * 0.2) / 3;
    _imageWidth = screenSize.width - screenSize.width * 0.2;
    showDialog(
      context: ctx,
      builder: (ctx) {
        return AlertDialog(
          backgroundColor: cardColor,
          title: SizedBox(
            width: screenSize.width - screenSize.width * 0.2,
            height: 20,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              controller: _controllerTitle,
              itemCount: TitleAndDescriptions.getMobileTitles().length,
              itemBuilder: (BuildContext _, int index) {
                return SizedBox(
                  width: screenSize.width - screenSize.width * 0.2,
                  child: Row(
                    children: [
                      _getIcon(
                          AccommodationIcons.getAccommodationIconsMobile()[
                              index],
                          screenSize),
                      Text(
                        TitleAndDescriptions.getMobileTitles()[index],
                        style: Theme.of(ctx).textTheme.subtitle1,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          content: SizedBox(
            width: screenSize.width,
            height: (screenSize.height - screenSize.height * 0.5),
            child: Column(
              children: [
                SizedBox(
                  width: screenSize.width - screenSize.width * 0.2,
                  height: (screenSize.height - screenSize.height * 0.5) / 2,
                  child: ListView.builder(
                    itemCount:
                        AccommodationImages.getAccommodationImagesMobile()
                            .length,
                    controller: _controllerImage,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: screenSize.width - screenSize.width * 0.2,
                        height:
                            (screenSize.height - screenSize.height * 0.5) / 2,
                        child: Image.asset(
                          AccommodationImages.getAccommodationImagesMobile()[
                              index],
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: screenSize.width,
                  height: (screenSize.height - screenSize.height * 0.5) / 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () => _changeInformations(true),
                        child: Container(
                          width: screenSize.width - screenSize.width * 0.9,
                          height: screenSize.height - screenSize.height * 0.9,
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Icon(
                              Icons.arrow_left_sharp,
                              color: secondaryColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: (screenSize.width - screenSize.width * 0.2) / 3,
                        height: (screenSize.height - screenSize.height * 0.5),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount:
                              TitleAndDescriptions.getMobileDescriptions()
                                  .length,
                          controller: _controllerText,
                          itemBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width:
                                  (screenSize.width - screenSize.width * 0.2) /
                                      3,
                              height: (screenSize.height -
                                      screenSize.height * 0.5) /
                                  4,
                              child: Text(
                                TitleAndDescriptions.getMobileDescriptions()[
                                    index],
                                style: Theme.of(ctx).textTheme.caption,
                                textAlign: TextAlign.center,
                              ),
                            );
                          },
                        ),
                      ),
                      InkWell(
                        onTap: () => _changeInformations(false),
                        child: SizedBox(
                          width: screenSize.width - screenSize.width * 0.9,
                          height: screenSize.height - screenSize.height * 0.9,
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Icon(
                              Icons.arrow_right_sharp,
                              color: secondaryColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(ctx).pop();
                    },
                    child: Container(
                      height: 30,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Fechar",
                            style: Theme.of(ctx).textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  Widget _getIcon(String iconUri, Size screenSize) {
    if (iconUri == "assets/icons/three_people_superior.png") {
      return SizedBox(
          width: screenSize.width - screenSize.width * 0.9,
          height: screenSize.height - screenSize.height * 0.955,
          child: Image.asset("assets/icons/three_people_superior.png"));
    }

    return SizedBox(
      width: screenSize.width - screenSize.width * 0.9,
      height: screenSize.height - screenSize.height * 0.955,
      child: SvgPicture.asset(
        iconUri,
        semanticsLabel: 'icon',
      ),
    );
  }

  _changeInformations(bool isReduce) {
    if (isReduce) {
      if (_controlVariable != 0) {
        _controlVariable--;
        _animateTitleToIndex(_controlVariable);
        _animateIconToIndex(_controlVariable);
        _animateTextToIndex(_controlVariable);
        _animateImageToIndex(_controlVariable);
      }
      return;
    }
    if (_controlVariable < 7) {
      _controlVariable++;
      _animateTitleToIndex(_controlVariable);
      _animateIconToIndex(_controlVariable);
      _animateTextToIndex(_controlVariable);
      _animateImageToIndex(_controlVariable);
    }
    return;
  }

  void _animateTitleToIndex(int index) {
    _controllerTitle.animateTo(
      index * _titleWidth,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
  }

  void _animateImageToIndex(int index) {
    _controllerImage.animateTo(
      index * _imageWidth,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
  }

  void _animateTextToIndex(int index) {
    _controllerText.animateTo(
      index * _textWidth,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
  }

  void _animateIconToIndex(int index) {
    _controllerIcon.animateTo(
      index * _iconWidth,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
  }
}
