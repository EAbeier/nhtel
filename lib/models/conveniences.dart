import 'package:flutter/widgets.dart';
import 'package:nhtelwebsite/widgets/standard_conveniences.dart';
import 'package:nhtelwebsite/widgets/superior_conveniences.dart';
import 'package:nhtelwebsite/widgets/work_e_economy_conveniences.dart';

class ConveniencesWidgets {
  static List<Widget> getConveniencesWidgets() => [
        const SuperiorConveniences(),
        const SuperiorConveniences(),
        const SuperiorConveniences(),
        const SuperiorConveniences(),
        const StandardConveniences(),
        const StandardConveniences(),
        const StandardConveniences(),
        const WorkAndEconomyConveniences()
      ];
}
