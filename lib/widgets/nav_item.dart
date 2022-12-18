import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nhtelwebsite/constants/constants.dart';
import 'package:nhtelwebsite/helpers/enums/enum_icons.dart';
import 'package:nhtelwebsite/helpers/themes/theme.dart';

class NavItem extends StatelessWidget {
  final String iconPath;
  final String itemTitle;

  const NavItem({
    Key? key,
    required this.iconPath,
    required this.itemTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
              width: 40,
              child: SvgPicture.asset(
                iconPath,
                semanticsLabel: '$itemTitle icon',
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Stack(
              children: [
                Text(
                  itemTitle,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 1
                      ..color = Colors.black,
                  ),
                ),
                Text(
                  itemTitle,
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
