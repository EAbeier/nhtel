enum EnumImages {
  nhtelLogo,
  accommodations,
  conveniences,
  events,
  hotel,
  localization,
  google
}

extension EnumGetter on EnumImages {
  String get uri {
    switch (this) {
      case EnumImages.nhtelLogo:
        return "assets/images/nhtel_logo.png";
      case EnumImages.accommodations:
        return "assets/images/parte_accommodations.png";
      case EnumImages.conveniences:
        return "assets/images/parte_conveniences.png";
      case EnumImages.events:
        return "assets/images/parte_events.png";
      case EnumImages.hotel:
        return "assets/images/parte_hotel.png";
      case EnumImages.localization:
        return "assets/images/parte_localization.png";
      case EnumImages.google:
        return "assets/images/localization_on_google.png";
    }
  }
}
