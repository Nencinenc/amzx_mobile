import 'package:amzx/configuration/services/amazon_values.dart';
import 'package:amzx/repositories/amazon_settings/amazon_settings_interface.dart';

import '../../configuration/services/api.dart';
import 'amazon_settings_repository_mappers.dart';

class AmazonSettingsRepository implements AmazonSettingsImpl {
  final API apiService;
  final AmazonValues amazonValues;

  AmazonSettingsRepository({
    required this.apiService,
    required this.amazonValues,
  });

  @override
  Future<bool> isRegionConnected(int index) async {
    try {
      final regionToCheck = parseIndexToString(index);
      return await apiService.isRegionConnected(regionToCheck);
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> isAccountConnected() async {
    try {
      final connectedRegions = await apiService.getUserConnections();
      return connectedRegions.isNotEmpty;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<void> connectAccount() async {
    try {
      final code = amazonValues.amazonCode.value;
      final region = parseRegionToString(amazonValues.selectedRegion.value);
      await apiService.connectWithAmazon(region, code);
    } catch (e) {}
  }
}
