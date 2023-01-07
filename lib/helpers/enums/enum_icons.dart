enum EnumIcons {
  bed,
  hotel,
  location,
  party,
  wifi,
  wifiAccommodations,
  tv,
  mug,
  airConditioner,
  attendance,
  onePerson,
  twoPeople,
  threePeople,
  pig,
  whatsApp,
  work,
  cardHotel,
  instagram
}

extension EnumGetter on EnumIcons {
  String get uri {
    switch (this) {
      case EnumIcons.bed:
        return "assets/icons/bed_icon.svg";
      case EnumIcons.hotel:
        return "assets/icons/hotel_icon.svg";
      case EnumIcons.location:
        return "assets/icons/location_icon.svg";
      case EnumIcons.party:
        return "assets/icons/party_icon.svg";
      case EnumIcons.wifi:
        return "assets/icons/wifi_icon.svg";
      case EnumIcons.wifiAccommodations:
        return "assets/icons/wifi_accommodations_icon.svg";
      case EnumIcons.tv:
        return "assets/icons/tv_icon.svg";
      case EnumIcons.mug:
        return "assets/icons/mug_icon.svg";
      case EnumIcons.airConditioner:
        return "assets/icons/air_conditioner_icon.svg";
      case EnumIcons.attendance:
        return "assets/icons/24_hours_sign_icon.svg";
      case EnumIcons.onePerson:
        return "assets/icons/one_person_icon.svg";
      case EnumIcons.twoPeople:
        return "assets/icons/two_people_Icon.svg";
      case EnumIcons.threePeople:
        return "assets/icons/three_people_Icon.png";
      case EnumIcons.pig:
        return "assets/icons/pig_icon.svg";
      case EnumIcons.whatsApp:
        return "assets/icons/whatsapp.png";
      case EnumIcons.work:
        return "assets/icons/mesa_trabalho_icon.svg";
      case EnumIcons.cardHotel:
        return "assets/icons/card_hotel.svg";
      case EnumIcons.instagram:
        return "assets/icons/Instagram.png";
    }
  }
}
