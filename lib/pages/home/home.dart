import 'package:flutter/material.dart';
import 'package:nhtelwebsite/helpers/responsive.dart';
import 'package:nhtelwebsite/pages/sections/accommodations_section.dart';
import 'package:nhtelwebsite/pages/sections/convenience_section.dart';
import 'package:nhtelwebsite/pages/sections/events_section.dart';
import 'package:nhtelwebsite/pages/sections/hotel_section.dart';
import 'package:nhtelwebsite/pages/sections/localization_section.dart';
import 'package:nhtelwebsite/widgets/nav_bar.dart';
import 'package:nhtelwebsite/widgets/navbar_mobile.dart';
import 'package:nhtelwebsite/widgets/reservation_bar.dart';
import 'package:nhtelwebsite/widgets/side_menu.dart';
import 'package:nhtelwebsite/widgets/talk_to_us.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  final ScrollController _controller = ScrollController();
  double _height = 100.0;
  final List<Widget> bodyWidgets = <Widget>[
    const HotelSection(),
    const AccommodationsSection(),
    const ConvenienceSection(),
    const EventsSection(),
    const LocalizationSection()
  ];

  void _animateToIndex(int index) {
    scaffoldKey.currentState!.closeDrawer();
    _controller.animateTo(
      index * _height,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
  }

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: ResponsiveWidget.isSmallScreen(context) ||
              ResponsiveWidget.isMediumScreen(context)
          ? PreferredSize(
              preferredSize: Size(screenSize.width, 90),
              child: MobileNavBar(scaffoldKey),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 90),
              child: NavBar(animateToIndex: _animateToIndex),
            ),
      drawer: SideMenu(animateToIndex: _animateToIndex),
      body: ListView.builder(
        controller: _controller,
        itemCount: bodyWidgets.length,
        itemBuilder: (_, i) {
          return bodyWidgets[i];
        },
      ),
      backgroundColor: Colors.white,
      floatingActionButton: const TalkToUs(),
      bottomNavigationBar: const ReservationBar(),
    );
  }
}
