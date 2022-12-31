import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nhtelwebsite/helpers/enums/enum_images.dart';
import 'package:nhtelwebsite/helpers/style.dart';
import 'package:nhtelwebsite/models/menu.dart';
import 'package:nhtelwebsite/widgets/nav_item.dart';

class SideMenu extends StatelessWidget {
  final void Function(int) animateToIndex;
  final Menu menu = Menu();

  SideMenu({super.key, required this.animateToIndex});

  @override
  Widget build(BuildContext context) {
    DateTime data = DateTime.now();
    return Drawer(
      backgroundColor: primaryColor,
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset(EnumImages.nhtelLogo.uri),
          ),
          SizedBox(
            height: (menu.length + 6) * 40,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: menu.length,
              itemBuilder: (BuildContext context, int index) {
                var item = menu.getMenuItemContent(index);
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: NavItem(
                    index: index,
                    animateToIndex: animateToIndex,
                    iconPath: item.iconPath,
                    itemTitle: item.title,
                  ),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "Copyright ${DateFormat('y').format(data)} | Nhtel",
              style: Theme.of(context).textTheme.caption,
            ),
          )
        ],
      ),
    );
  }
}
