import 'package:nhtelwebsite/constants/constants.dart';
import 'package:nhtelwebsite/helpers/enums/enum_icons.dart';
import 'package:nhtelwebsite/models/menu_item.dart';

class Menu {
  final List<MenuItem> _menuItems = [
    MenuItem(
      title: HOTELTITLE,
      iconPath: EnumIcons.hotel.uri,
      position: 0,
    ),
    MenuItem(
      title: ACCOMMODATIONSTITLE,
      iconPath: EnumIcons.bed.uri,
      position: 1,
    ),
    MenuItem(
      title: CONVENIENCESTITLE,
      iconPath: EnumIcons.wifi.uri,
      position: 2,
    ),
    MenuItem(
      title: EVENTSTITLE,
      iconPath: EnumIcons.party.uri,
      position: 3,
    ),
    MenuItem(
      title: LOCALIZATIONTITLE,
      iconPath: EnumIcons.location.uri,
      position: 4,
    ),
  ];

  List<MenuItem> get contents {
    return _menuItems;
  }

  int get length {
    return _menuItems.length;
  }

  MenuItem getMenuItemContent(int index) {
    return _menuItems[index];
  }
}
