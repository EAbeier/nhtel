import 'package:nhtelwebsite/helpers/enums/enum_accommodations_images.dart';
import 'package:nhtelwebsite/helpers/enums/enum_images.dart';

class AccommodationImages {
  static List<String> getAccommodationImages() {
    return [
      EnumAccommodationsImages.superiorCasal.uri,
      EnumAccommodationsImages.superiorDuploSolteiro.uri,
      EnumAccommodationsImages.superiorTriploCasal.uri,
      EnumAccommodationsImages.superiorTriploSolteiro.uri,
      EnumAccommodationsImages.standardCasal.uri,
      EnumAccommodationsImages.standardDuploSolteiro.uri,
      EnumAccommodationsImages.standardSolteiro.uri,
      EnumAccommodationsImages.workEEconomy.uri,
    ];
  }

  static List<String> getAccommodationImagesMobile() {
    return [
      EnumAccommodationsImages.superiorCasalMobile.uri,
      EnumAccommodationsImages.superiorDuploSolteiroMobile.uri,
      EnumAccommodationsImages.superiorTriploCasalMobile.uri,
      EnumAccommodationsImages.superiorTriploSolteiroMobile.uri,
      EnumAccommodationsImages.standardCasalMobile.uri,
      EnumAccommodationsImages.standardDuploSolteiroMobile.uri,
      EnumAccommodationsImages.standardSolteiroMobile.uri,
      EnumAccommodationsImages.workEEconomyMobile.uri,
    ];
  }
}
