import 'package:amzx/configuration/interceptors/enums.dart';
import 'package:amzx/repositories/amazon_settings/amazon_settings_repository_mappers.dart';
import 'package:flutter/cupertino.dart';

class AmazonValues {
  final ValueNotifier<String> amazonCode;
  final ValueNotifier<Regions> selectedRegion;

  AmazonValues({
    required this.amazonCode,
    required this.selectedRegion,
  });

  void handleAmazonCodeChange(String value) {
    amazonCode.value = value;
  }

  void handleRegionChange(int value) {
    final region = parseIndexToRegion(value);
    selectedRegion.value = region;
  }
}
