import 'package:amzx/common_widgets/typography/custom_text.dart';
import 'package:amzx/shared/app_colors.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> showErrorMessage(
  BuildContext context,
  String title,
) {
  return Flushbar(
    margin: const EdgeInsets.all(8),
    borderRadius: BorderRadius.circular(8),
    messageText: CustomText(
      text: title,
    ),
    backgroundColor: darkGrey,
    icon: const Padding(
      padding: EdgeInsets.only(left: 8.0),
      child: Icon(
        Icons.info_outline,
        size: 28.0,
        color: Colors.white,
      ),
    ),
    duration: const Duration(seconds: 3),
    padding: const EdgeInsets.only(
      top: 20,
      bottom: 20,
    ),
  ).show(context);
}
