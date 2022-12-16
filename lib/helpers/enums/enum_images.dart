enum EnumImages {
  nhtelLogo,
  accommodations,
  conveniences,
  events,
  hotel,
  localization
}

extension EnumGetter on EnumImages {
  String get uri {
    switch (this) {
      case EnumImages.nhtelLogo:
        return "assets/images/nhtel_logo.png";
      case EnumImages.accommodations:
        return "";
      case EnumImages.conveniences:
        return "";
      case EnumImages.events:
        return "";
      case EnumImages.hotel:
        return "";
      case EnumImages.localization:
        return "";
    }
  }
}
