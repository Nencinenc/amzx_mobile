import 'package:amzx/common_widgets/typography/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../shared/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final List<Widget>? actions;
  final Widget? leading;
  final Widget? titleWidget;
  final double? leadingWidth;
  final Color backgroundColor;

  const CustomAppBar({
    Key? key,
    this.title,
    this.actions,
    this.leading,
    this.titleWidget,
    this.leadingWidth,
    this.backgroundColor = primaryBackground,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 1000),
      child: AppBar(
        elevation: 5.0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: actions,
        title: CustomText(
          text: title ?? '',
          textColor: Colors.white,
        ),
        leading: leading,
        leadingWidth: leadingWidth,
        backgroundColor: backgroundColor,
      ),
    );
  }
}
