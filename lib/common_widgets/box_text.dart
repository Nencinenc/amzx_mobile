import 'package:flutter/material.dart';

import '../shared/styles.dart';

class HeadingOneText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;

  const HeadingOneText({
    Key? key,
    required this.text,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: heading1Style,
      textAlign: textAlign,
    );
  }
}

class HeadingTwoText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final Color color;

  const HeadingTwoText({
    Key? key,
    required this.text,
    this.textAlign,
    required this.color,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: heading2Style.fontWeight,fontSize: heading2Style.fontSize, color: color,),
      textAlign: textAlign,
    );
  }
}

class HeadingThreeText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final Color color;

  const HeadingThreeText({
    Key? key,
    required this.text,
    this.textAlign,
    required this.color,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: heading3Style.fontWeight,fontSize: heading3Style.fontSize, color: color,),
      textAlign: textAlign,

    );
  }
}

class HeadlineText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;

  const HeadlineText({
    Key? key,
    required this.text,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: headlineStyle,
      textAlign: textAlign,
    );
  }
}

class BodyText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;

  const BodyText({
    Key? key,
    required this.text,
    this.textAlign
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: bodyStyle,
      textAlign: textAlign,
    );
  }
}

class SubHeadingText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;

  const SubHeadingText({
    Key? key,
    required this.text,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: subheadingStyle,
      textAlign: textAlign,
    );
  }
}

class CaptionText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;

  const CaptionText({
    Key? key,
    required this.text,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: captionStyle,
      textAlign: textAlign,
    );
  }
}

class FilledButtonText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;

  const FilledButtonText({
    Key? key,
    required this.text,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: filledButtonText,
      textAlign: textAlign,
    );
  }
}

class OutlineButtonText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;

  const OutlineButtonText({
    Key? key,
    required this.text,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: outlineButtonText,
      textAlign: textAlign,
    );
  }
}

class BoxTitle extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;

  const BoxTitle({
    Key? key,
    required this.text,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: boxTitleText,
      textAlign: textAlign,
    );
  }
}


class BoxAmount extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;

  const BoxAmount({
    Key? key,
    required this.text,
    this.textAlign,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: boxAmountText,
      textAlign: textAlign,
    );
  }
}

