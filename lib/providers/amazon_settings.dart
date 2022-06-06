import 'package:amzx/configuration/services/amazon_values.dart';
import 'package:amzx/repositories/amazon_settings/amazon_settings.dart';
import 'package:flutter/foundation.dart';

class AmazonSettingsProvider extends ChangeNotifier {
  final AmazonSettingsRepository amazonSettingsRepository;
  final AmazonValues amazonValues;

  AmazonSettingsProvider({
    required this.amazonSettingsRepository,
    required this.amazonValues,
  });

  int _activeIndex = 0;
  int get activeIndex => _activeIndex;
  void changeActiveIndex(int? index) async {
    _activeIndex = index ?? 0;
    changeIsRegionConnected =
        await amazonSettingsRepository.isRegionConnected(_activeIndex);
    amazonValues.handleRegionChange(_activeIndex);
    notifyListeners();
  }

  bool _isRegionConnected = false;
  bool get isRegionConnected => _isRegionConnected;
  set changeIsRegionConnected(bool value) {
    _isRegionConnected = value;
    notifyListeners();
  }
}
