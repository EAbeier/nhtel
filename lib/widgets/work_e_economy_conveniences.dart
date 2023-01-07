import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nhtelwebsite/constants/constants.dart';
import 'package:nhtelwebsite/helpers/enums/enum_icons.dart';
import 'package:nhtelwebsite/helpers/style.dart';

class WorkAndEconomyConveniences extends StatelessWidget {
  const WorkAndEconomyConveniences({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: 80,
      width: screenSize.width - screenSize.width * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 40,
                width: 40,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                ),
                child: SvgPicture.asset(
                  EnumIcons.work.uri,
                  semanticsLabel: 'Tv icon',
                ),
              ),
              SizedBox(
                width: 50,
                height: 50,
                child: Text(
                  WORKDESK,
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 40,
                width: 40,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                ),
                child: SvgPicture.asset(
                  EnumIcons.tv.uri,
                  semanticsLabel: 'Tv icon',
                ),
              ),
              SizedBox(
                width: 40,
                height: 50,
                child: Text(
                  TV,
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 40,
                width: 40,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                ),
                child: SvgPicture.asset(
                  EnumIcons.wifiAccommodations.uri,
                  semanticsLabel: 'Tv icon',
                ),
              ),
              SizedBox(
                width: 40,
                height: 50,
                child: Text(
                  WIFI,
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
