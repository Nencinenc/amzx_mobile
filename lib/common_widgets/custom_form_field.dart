import 'package:flutter/material.dart';

import 'box_text.dart';
import 'input_field.dart';

class CustomForField extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final bool password;

  const CustomForField({
    Key? key,
    required this.title,
    required this.controller,
    this.password = false,
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
          child: CaptionText(
            text: title,
          ),
        ),
        BoxInputField(
          controller: controller,
          password: password,
        ),
      ],
    );
  }
}
