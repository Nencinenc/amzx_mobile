import 'package:amzx/common_widgets/typography/custom_text.dart';
import 'package:amzx/shared/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DollarSignBox extends StatelessWidget {
  final String text;

  const DollarSignBox({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: dollarSignBox, borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(9.0)),
              width: 20.0,
              child: const Icon(
                FontAwesomeIcons.dollarSign, size: 15, //Icon Size
                color: Colors.black,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: CustomText(
                text: 'Discover new ways to conquer Amazon!',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
