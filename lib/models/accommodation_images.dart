import 'package:nhtelwebsite/helpers/enums/enum_accommodations_images.dart';
import 'package:nhtelwebsite/helpers/enums/enum_images.dart';

class AccommodationImages {
  static List<String> getAccommodationImages() {
    return [
      EnumAccommodationsImages.superiorCasal.uri,
      EnumAccommodationsImages.standardDuploSolteiro.uri,
      EnumAccommodationsImages.superiorTriploCasal.uri,
      EnumAccommodationsImages.superiorTriploSolteiro.uri,
      EnumAccommodationsImages.standardCasal.uri,
      EnumAccommodationsImages.standardDuploSolteiro.uri,
      EnumAccommodationsImages.standardSolteiro.uri,
      EnumAccommodationsImages.workEEconomy.uri,
    ];
  }
}
