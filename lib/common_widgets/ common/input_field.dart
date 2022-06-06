import 'package:flutter/material.dart';

import '../../shared/app_colors.dart';

class BoxInputField extends StatelessWidget {
  final TextEditingController controller;
  final String placeholder;
  final Widget? leading;
  final Widget? trailing;
  final bool hideText;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final Widget? icon;
  final void Function()? trailingTapped;

  final circularBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );

  BoxInputField({
    Key? key,
    required this.controller,
    this.placeholder = '',
    this.leading,
    this.trailing,
    this.trailingTapped,
    this.textInputType,
    this.textInputAction,
    this.icon,
    this.hideText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: const TextStyle(height: 1, color: buttonText),
      obscureText: hideText,
      keyboardType: textInputType,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: kcLightGreyColor),
        ),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: kcLightGreyColor),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: kcLightGreyColor),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: kcLightGreyColor),
        ),
        suffixIcon: icon,
      ),
    );
  }
}
