import 'package:amzx/common_widgets/typography/custom_text.dart';
import 'package:flutter/material.dart';

import '../../configuration/interceptors/enums.dart';
import '../../shared/app_colors.dart';

class ConnectionIndicator extends StatelessWidget {
  final bool isOnline;
  const ConnectionIndicator({
    Key? key,
    required this.isOnline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isOnline ? success : error,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 16.0,
        ),
        child: CustomText(
          text: isOnline ? 'Connected' : 'Not connected',
          textColor: Colors.white,
          textSize: TextSize.m,
        ),
      ),
    );
  }
}
