import 'dart:async';

import 'package:amzx/common_widgets/custom_scaffold.dart';
import 'package:amzx/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common_widgets/company_logo.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void _loadInitialData() async {
    //Here we will load the initial data and do the checks for the token
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamedAndRemoveUntil(
          context, RouteManager.landingPage, (_) => false),
    );
  }

  @override
  void initState() {
    super.initState();
    _loadInitialData();
  }

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      body: Center(
        child: SizedBox(
          height: 100,
          width: 100,
          child: CompanyLogo(),
        ),
      ),
    );
  }
}
