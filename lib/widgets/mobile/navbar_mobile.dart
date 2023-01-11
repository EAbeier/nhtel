import 'package:flutter/material.dart';
import 'package:nhtelwebsite/helpers/enums/enum_images.dart';
import 'package:nhtelwebsite/helpers/style.dart';

Widget mobileNavBar(GlobalKey<ScaffoldState> key) => AppBar(
      leading: IconButton(
        icon: const Icon(Icons.menu, color: Colors.white),
        onPressed: () {
          key.currentState!.openDrawer();
        },
      ),
      title: SizedBox(
        height: 100,
        width: 100,
        child: Image.asset(EnumImages.nhtelLogo.uri),
      ),
      backgroundColor: primaryColor,
      centerTitle: true,
      elevation: 0,
    );
