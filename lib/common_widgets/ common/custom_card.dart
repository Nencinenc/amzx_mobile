import 'package:amzx/common_widgets/typography/custom_text.dart';
import 'package:amzx/shared/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../configuration/interceptors/enums.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const CustomCard({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0,
      height: 80.0,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: CustomText(
                  text: title,
                  textSize: TextSize.xl,
                  textColor: blackColor,
                  textWeight: WeightSize.demiBold,
                ),
              ),
              CustomText(
                text: subtitle,
                textSize: TextSize.s,
                textColor: kcMediumGreyColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
