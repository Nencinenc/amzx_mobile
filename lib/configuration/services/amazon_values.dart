import 'package:flutter/cupertino.dart';

class AmazonValues {
  final ValueNotifier<String> amazonCode;

  AmazonValues({
    required this.amazonCode,
  });

  void handleAmazonCodeChange(String value) {
    amazonCode.value = value;
  }
}
