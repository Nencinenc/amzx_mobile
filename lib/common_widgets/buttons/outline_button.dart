import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../configuration/interceptors/enums.dart';
import '../../shared/app_colors.dart';
import '../typography/custom_text.dart';

class OutlineButton extends StatelessWidget {
  final void Function() onTap;
  final bool disabled;
  final String text;

  const OutlineButton({
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
      color: heroBackground,
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
