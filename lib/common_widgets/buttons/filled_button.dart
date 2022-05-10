import 'package:amzx/shared/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../configuration/interceptors/enums.dart';
import '../typography/custom_text.dart';

class FilledButton extends StatelessWidget {
  final void Function() onTap;
  final bool disabled;
  final String text;

  const FilledButton({
    Key? key,
    required this.onTap,
    required this.text,
    this.disabled = false,
  }) : super(key: key);

  void handleButtonClick() {
    if (!disabled) {
      onTap();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      color: filledButtonBackground,
      height: 45,
      minWidth: double.infinity,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        side: BorderSide(color: outlineButtonBorder),
      ),
      child: CustomText(
        text: text,
        textColor: Colors.white,
        textWeight: WeightSize.heavy,
      ),
    );
  }
}
