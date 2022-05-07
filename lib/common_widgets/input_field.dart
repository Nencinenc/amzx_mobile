import 'package:flutter/material.dart';

import '../shared/app_colors.dart';

class BoxInputField extends StatelessWidget {
  final TextEditingController controller;
  final String placeholder;
  final Widget? leading;
  final Widget? trailing;
  final bool password;
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
    this.password = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: const TextStyle(height: 1, color: buttonText),
      obscureText: password,
      decoration: const InputDecoration(
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: kcLightGreyColor),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kcLightGreyColor),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kcLightGreyColor),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kcLightGreyColor),
        ),
      ),
    );
  }
}