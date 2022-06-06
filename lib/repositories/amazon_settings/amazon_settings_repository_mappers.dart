import 'package:amzx/configuration/interceptors/enums.dart';

String parseRegionToString(Regions region) {
  switch (region) {
    case Regions.fe:
      return 'FE';
    case Regions.eu:
      return 'EU';
    case Regions.na:
      return 'NA';
  }
}

String parseIndexToString(int index) {
  switch (index) {
    case 0:
      return 'EU';
    case 1:
      return 'NA';
    case 2:
      return 'FE';
    default:
      return 'EU';
  }
}

Regions parseIndexToRegion(int index) {
  switch (index) {
    case 0:
      return Regions.eu;
    case 1:
      return Regions.na;
    case 2:
      return Regions.fe;
    default:
      return Regions.eu;
  }
}
