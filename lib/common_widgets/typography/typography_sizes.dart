part of './custom_text.dart';

class _TypographySizes {
  static double textSize(TextSize size) {
    switch (size) {
      case TextSize.xxs:
        return 10.0;
      case TextSize.xs:
        return 12.0;
      case TextSize.s:
        return 14.0;
      case TextSize.m:
        return 16.0;
      case TextSize.l:
        return 18.0;
      case TextSize.xl:
        return 20.0;
      case TextSize.xxl:
        return 22.0;
      case TextSize.xxxl:
        return 26.0;
      case TextSize.xxxxl:
        return 30.0;
      default:
        throw const FormatException('Size not found!');
    }
  }

  static FontWeight fontWeight(WeightSize size) {
    switch (size) {
      case WeightSize.thin:
        return FontWeight.w300;
      case WeightSize.regular:
        return FontWeight.w400;
      case WeightSize.demiBold:
        return FontWeight.w500;
      case WeightSize.bold:
        return FontWeight.w600;
      case WeightSize.ultraBold:
        return FontWeight.w700;
      case WeightSize.heavy:
        return FontWeight.w800;
      default:
        throw const FormatException('Weight not found!');
    }
  }
}
