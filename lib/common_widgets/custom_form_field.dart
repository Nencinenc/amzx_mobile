import 'package:amzx/common_widgets/typography/custom_text.dart';
import 'package:flutter/material.dart';

import '../shared/app_colors.dart';
import 'input_field.dart';

class CustomForField extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final bool hideText;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final Widget? icon;

  const CustomForField({
    Key? key,
    required this.title,
    required this.controller,
    this.textInputType,
    this.textInputAction,
    this.icon,
    this.hideText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: 4.0,
          ),
          child: CustomText(
            text: title,
            textColor: primaryTextColor,
          ),
        ),
        BoxInputField(
          controller: controller,
          hideText: hideText,
          textInputType: textInputType,
          textInputAction: textInputAction,
          icon: icon,
        ),
      ],
    );
  }
}
