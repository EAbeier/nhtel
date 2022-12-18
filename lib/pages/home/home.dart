import 'package:flutter/material.dart';
import 'package:nhtelwebsite/helpers/responsive.dart';
import 'package:nhtelwebsite/widgets/body.dart';
import 'package:nhtelwebsite/widgets/nav_bar.dart';
import 'package:nhtelwebsite/widgets/navbar_mobile.dart';
import 'package:nhtelwebsite/widgets/side_menu.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? PreferredSize(
              preferredSize: Size(screenSize.width, 80),
              child: MobileNavBar(scaffoldKey),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 200),
              child: const NavBar(),
            ),
      drawer: SideMenu(),
      body: const Body(),
      backgroundColor: Colors.white,
    );
  }
}
