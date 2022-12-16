import 'package:flutter/material.dart';
import 'package:nhtelwebsite/helpers/enums/enum_images.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size(screenSize.width, 90),
      child: Stack(
        children: [
          Image.asset(EnumImages.nhtelLogo.uri),
          Container(
            child: Row(),
          ),
        ],
      ),
    );
  }
}
