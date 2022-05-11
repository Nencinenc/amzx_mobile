import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../typography/custom_text.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {Key? key,
      required this.text,
      required this.icon,
      required this.size,
      required this.color,
      this.onPress})
      : super(key: key);

  final String text;
  final IconData icon;
  final double size;
  final Color color;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            FaIcon(icon, size: size, color: color),
            CustomText(text: text),
          ],
        ),
      ),
    );
  }
}
