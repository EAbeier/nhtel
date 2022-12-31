enum EnumAccommodationsImages {
  superiorCasal,
  superiorDuploSolteiro,
  superiorTriploCasal,
  superiorTriploSolteiro,
  standardCasal,
  standardDuploSolteiro,
  standardSolteiro,
  workEEconomy
}

extension EnumGetter on EnumAccommodationsImages {
  String get uri {
    switch (this) {
      case EnumAccommodationsImages.superiorCasal:
        return 'assets/images/superior_casal.png';
      case EnumAccommodationsImages.superiorDuploSolteiro:
        return 'assets/images/superior_duplo_solteiro.png';
      case EnumAccommodationsImages.superiorTriploCasal:
        return 'assets/images/superior_triplo_casal.png';
      case EnumAccommodationsImages.superiorTriploSolteiro:
        return 'assets/images/superior_triplo_solteiro.png';
      case EnumAccommodationsImages.standardCasal:
        return 'assets/images/standard_casal.png';
      case EnumAccommodationsImages.standardDuploSolteiro:
        return 'assets/images/standard_duplo_solteiro.png';
      case EnumAccommodationsImages.standardSolteiro:
        return 'assets/images/standard_solteiro.png';
      case EnumAccommodationsImages.workEEconomy:
        return 'assets/images/work_e_economy.png';
    }
  }
}
