import 'package:flutter/foundation.dart';

import '../configuration/interceptors/enums.dart';

class AmazonSettingsProvider extends ChangeNotifier {
  // final code = amazonValues.amazonCode.value;
  Regions _selectedRegion = Regions.eu;
  Regions get selectedRegion => _selectedRegion;
  set handleRegionChange(Regions value) {
    _selectedRegion = value;
  }
}
