import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../configuration/constants.dart';
import '../../shared/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget>? actions;
  final Widget? leading;
  final Widget? titleWidget;
  final double? leadingWidth;
  final Color backgroundColor;

  const CustomAppBar({
    Key? key,
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
        title: Image.asset(
          logoWithTextPath,
          fit: BoxFit.cover,
          height: 40,
        ),
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: actions,
        leading: leading,
        leadingWidth: leadingWidth,
        backgroundColor: backgroundColor,
        centerTitle: true,
      ),
    );
  }
}
