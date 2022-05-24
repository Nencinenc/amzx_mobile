import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../configuration/locator.dart';
import '../pages/home_page.dart';
import '../pages/introduction_screens.dart';
import '../pages/landing_page.dart';
import '../pages/login_page.dart';
import '../pages/splash_page.dart';
import '../providers/main_page_provider.dart';

class RouteManager {
  static const String splashPage = '/home';
  static const String homePage = '/';
  static const String landingPage = '/login';
  static const String introductionPage = '/introduction-page';
  static const String loginPage = '/login-page';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashPage:
        return (MaterialPageRoute(
          builder: (context) => const SplashPage(),
          settings: settings,
        ));
      case homePage:
        return (MaterialPageRoute(
          builder: (context) => ChangeNotifierProvider.value(
            value: getIt<MainPageProvider>(),
            child: const HomePage(),
          ),
          settings: settings,
        ));
      case landingPage:
        return (MaterialPageRoute(
          builder: (context) => const LandingPage(),
          settings: settings,
        ));
      case introductionPage:
        return (MaterialPageRoute(
          builder: (context) => IntroductionScreenPage(),
          settings: settings,
        ));
      case loginPage:
        return (MaterialPageRoute(
          builder: (context) => LoginPage(),
          settings: settings,
        ));
      default:
        throw const FormatException('Route not found!');
    }
  }
}
