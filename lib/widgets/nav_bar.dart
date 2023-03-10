import 'package:flutter/material.dart';
import 'package:nhtelwebsite/helpers/enums/enum_images.dart';
import 'package:nhtelwebsite/helpers/style.dart';
import 'package:nhtelwebsite/models/menu.dart';
import 'package:nhtelwebsite/widgets/nav_item.dart';

class NavBar extends StatefulWidget {
  final void Function(int) animateToIndex;
  const NavBar({super.key, required this.animateToIndex});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final Menu menu = Menu();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 90,
          color: primaryColor,
        ),
        Container(
          height: 90,
          padding: const EdgeInsets.only(left: 200),
          child: Container(
            alignment: Alignment.center,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: menu.length,
              itemBuilder: (BuildContext context, int index) {
                var item = menu.getMenuItemContent(index);
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: NavItem(
                    index: index,
                    animateToIndex: widget.animateToIndex,
                    iconPath: item.iconPath,
                    itemTitle: item.title,
                  ),
                );
              },
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child: SizedBox(
            height: 200,
            width: 200,
            child: Image.asset(EnumImages.nhtelLogo.uri),
          ),
        ),
      ],
    );
  }
}
