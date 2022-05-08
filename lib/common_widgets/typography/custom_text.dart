import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../configuration/interceptors/enums.dart';
import '../../shared/app_colors.dart';

part './typography_sizes.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextSize textSize;
  final WeightSize textWeight;
  final Color textColor;
  final TextAlign? textAlign;
  final bool underline;
  final double? height;
  final double? letterSpacing;

  const CustomText({
    Key? key,
    required this.text,
    this.textSize = TextSize.s,
    this.textWeight = WeightSize.regular,
    this.textColor = primaryText,
    this.textAlign,
    this.underline = false,
    this.height,
    this.letterSpacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: _TypographySizes.textSize(textSize),
        fontWeight: _TypographySizes.fontWeight(textWeight),
        color: textColor,
        decoration: underline ? TextDecoration.underline : null,
        decorationColor: textColor,
        decorationThickness: 1,
        height: height,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
