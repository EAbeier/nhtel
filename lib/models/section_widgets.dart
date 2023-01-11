import 'package:flutter/widgets.dart';
import 'package:nhtelwebsite/pages/sections/accommodations_section.dart';
import 'package:nhtelwebsite/pages/sections/convenience_section.dart';
import 'package:nhtelwebsite/pages/sections/events_section.dart';
import 'package:nhtelwebsite/pages/sections/hotel_section.dart';
import 'package:nhtelwebsite/pages/sections/localization_section.dart';
import 'package:nhtelwebsite/pages/sections/mobile/mobile_accommodations_section.dart';
import 'package:nhtelwebsite/pages/sections/mobile/mobile_convenience_section.dart';
import 'package:nhtelwebsite/pages/sections/mobile/mobile_events_section.dart';
import 'package:nhtelwebsite/pages/sections/mobile/mobile_hotel_section.dart';
import 'package:nhtelwebsite/pages/sections/mobile/mobile_localization_section.dart';

class SectionWidgets {
  static List<Widget> getWebWidgets() => [
        const HotelSection(),
        const AccommodationsSection(),
        const ConvenienceSection(),
        const EventsSection(),
        const LocalizationSection()
      ];

  static List<Widget> getMobileWidgets() => [
        const MobileHotelSection(),
        const MobileAccommodationsSection(),
        const MobileConvenienceSection(),
        const MobileEventsSection(),
        const MobileLocalizationSection()
      ];
}
