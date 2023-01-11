import 'package:flutter/material.dart';
import 'package:nhtelwebsite/helpers/responsive.dart';
import 'package:nhtelwebsite/models/section_widgets.dart';
import 'package:nhtelwebsite/pages/sections/accommodations_section.dart';
import 'package:nhtelwebsite/pages/sections/convenience_section.dart';
import 'package:nhtelwebsite/pages/sections/events_section.dart';
import 'package:nhtelwebsite/pages/sections/hotel_section.dart';
import 'package:nhtelwebsite/pages/sections/localization_section.dart';
import 'package:nhtelwebsite/widgets/mobile/mobile_reservation_bar.dart';
import 'package:nhtelwebsite/widgets/nav_bar.dart';
import 'package:nhtelwebsite/widgets/mobile/navbar_mobile.dart';
import 'package:nhtelwebsite/widgets/reservation_bar.dart';
import 'package:nhtelwebsite/widgets/side_menu.dart';
import 'package:nhtelwebsite/widgets/talk_to_us.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  final ScrollController _controller = ScrollController();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = 100.0;

    void animateToIndex(int index) {
      scaffoldKey.currentState!.closeDrawer();
      _controller.animateTo(
        index * height,
        duration: const Duration(seconds: 2),
        curve: Curves.fastOutSlowIn,
      );
    }

    height = MediaQuery.of(context).size.height;
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: ResponsiveWidget.isSmallScreen(context) ||
              ResponsiveWidget.isMediumScreen(context)
          ? PreferredSize(
              preferredSize: Size(screenSize.width, 90),
              child: mobileNavBar(scaffoldKey),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 90),
              child: NavBar(animateToIndex: animateToIndex),
            ),
      drawer: SideMenu(animateToIndex: animateToIndex),
      body: ListView.builder(
        controller: _controller,
        itemCount: ResponsiveWidget.isSmallScreen(context) ||
                ResponsiveWidget.isMediumScreen(context)
            ? SectionWidgets.getMobileWidgets().length
            : SectionWidgets.getWebWidgets().length,
        itemBuilder: (_, i) {
          return ResponsiveWidget.isSmallScreen(context) ||
                  ResponsiveWidget.isMediumScreen(context)
              ? SectionWidgets.getMobileWidgets()[i]
              : SectionWidgets.getWebWidgets()[i];
        },
      ),
      backgroundColor: Colors.white,
      floatingActionButton: const TalkToUs(),
      bottomNavigationBar: ResponsiveWidget.isSmallScreen(context) ||
              ResponsiveWidget.isMediumScreen(context)
          ? const MobileReservationBar()
          : const ReservationBar(),
    );
  }
}
