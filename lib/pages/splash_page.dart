import 'package:amzx/common_widgets/custom_scaffold.dart';
import 'package:amzx/repositories/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common_widgets/company_logo.dart';
import '../configuration/locator.dart';
import '../routes/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void _loadInitialData() async {
    final userRepository = getIt<UserRepository>();
    final isLogged = await userRepository.isLogged();

    if (isLogged) {
      Navigator.pushNamedAndRemoveUntil(
          context, RouteManager.homePage, (_) => false);
    }
    if (!isLogged) {
      Navigator.pushNamedAndRemoveUntil(
          context, RouteManager.landingPage, (_) => false);
    }
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
