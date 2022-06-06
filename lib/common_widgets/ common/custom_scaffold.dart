import 'package:amzx/shared/app_colors.dart';
import 'package:flutter/material.dart';

import '../../configuration/locator.dart';
import '../../configuration/services/error_messages.dart';

class CustomScaffold extends StatefulWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigationBar;
  final bool? resizeToAvoidBottomInset;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Widget? floatingActionButton;

  const CustomScaffold({
    required this.body,
    this.appBar,
    this.bottomNavigationBar,
    this.resizeToAvoidBottomInset = true,
    this.floatingActionButtonLocation,
    this.floatingActionButton,
    Key? key,
  }) : super(key: key);

  @override
  State<CustomScaffold> createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  final errorMessagesService = getIt<ErrorMessagesService>();
  @override
  Widget build(BuildContext context) {
    errorMessagesService.initErrorHandler(context);
    return Scaffold(
      appBar: widget.appBar,
      backgroundColor: heroBackground,
      body: widget.body,
      bottomNavigationBar: widget.bottomNavigationBar,
      resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
      floatingActionButtonLocation: widget.floatingActionButtonLocation,
      floatingActionButton: widget.floatingActionButton,
    );
  }
}
