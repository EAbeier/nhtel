import 'package:flutter/material.dart';
import 'package:nhtelwebsite/constants/constants.dart';
import 'package:nhtelwebsite/helpers/enums/enum_icons.dart';
import 'package:nhtelwebsite/helpers/enums/enum_images.dart';
import 'package:nhtelwebsite/helpers/responsive.dart';
import 'package:nhtelwebsite/helpers/style.dart';
import 'package:nhtelwebsite/models/accommodation_images.dart';
import 'package:nhtelwebsite/widgets/section_title.dart';

class AccommodationsSection extends StatelessWidget {
  AccommodationsSection({super.key});
  final ScrollController _controller = ScrollController();
  double _width = 100.0;
  var variavelControle = 0;
  void _animateToIndex(int index, bool reduce) {
    _controller.animateTo(
      index * _width,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
    if (reduce) {
      variavelControle--;
    } else {
      variavelControle++;
    }
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
          Flexible(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              itemCount: AccommodationImages.getAccommodationImages().length,
              itemBuilder: (_, i) {
                return Padding(
                  padding: EdgeInsets.only(
                      top: 10, bottom: screenSize.height / 4.25),
                  child: Container(
                    height: screenSize.height,
                    width: screenSize.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              AccommodationImages.getAccommodationImages()[i]),
                          fit: BoxFit.cover),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

/*Container(
            height: screenSize.height + 100,
            width: screenSize.width,
            child: Row(
              children: [
                Container(
                  height: screenSize.height + 100,
                  width: screenSize.width,
                  padding: EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Container(
                          margin: EdgeInsets.only(right: 60),
                          height: 40,
                          width: 40,
                          child: Icon(
                            size: 100,
                            Icons.arrow_left_sharp,
                            color: secondaryColor,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(8.0),
                            padding: EdgeInsets.all(10),
                            height: 112,
                            width: 112,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(100.0),
                              ),
                              color: primaryColor,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(100.0),
                                ),
                                color: accommodationsColor,
                              ),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              margin: EdgeInsets.only(left: 5, right: 5),
                              height: 400,
                              width: 400,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(30.0),
                                    topRight: Radius.circular(30.0)),
                                color: primaryColor,
                              ),
                              child: Column(),
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          if (variavelControle <
                              AccommodationImages.getAccommodationImages()
                                  .length) {
                            _animateToIndex(variavelControle++, false);
                          }
                        },
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Container(
                            padding: EdgeInsets.only(right: 20),
                            margin: EdgeInsets.only(right: 20),
                            height: 40,
                            width: 40,
                            child: Icon(
                              size: 100,
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
            ),
          )*/ 