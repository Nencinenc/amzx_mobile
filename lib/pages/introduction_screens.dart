import 'package:amzx/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionScreenPage extends StatelessWidget {
  IntroductionScreenPage({Key? key}) : super(key: key);

  final _listPagesViewModel = [
    PageViewModel(
      title: "Keyword Research",
      body:
          "Leave the time-consuming process of researching relevant keywords to us! We’ll make sure that your products appear as soon as prospective customers make a promising search query.",
      image: Center(
        child: Image.network(
            "https://www.bidx.io/images/startpage/tablet-keyword-research-ec02ffb991.webp",
            height: 300.0),
      ),
    ),
    PageViewModel(
      title: "Campaign Creation",
      body:
          "Create complete ad campaign structures effortlessly. With just a few clicks, lay the foundations for optimally performing ads, which are then automatically synchronized with your Amazon account.",
      image: Center(
        child: Image.network(
            "https://www.bidx.io/images/startpage/tablet-campaign-creation-8f3fba8d5c.webp",
            height: 300.0),
      ),
    ),
    PageViewModel(
      title: "Campaign Optimization",
      body:
          "Our algorithm automatically recognizes well and badly performing keywords and adjusts their bids accordingly. With continuous daily adjustments, the profitability of your ads can increase many times over.",
      image: Center(
        child: Image.network(
            "https://www.bidx.io/images/startpage/tablet-bid-optimization-e1463ea143.webp",
            height: 300.0),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: _listPagesViewModel,
      onDone: () {
        Navigator.pushNamedAndRemoveUntil(
            context, RouteManager.landingPage, (route) => false);
      },
      onSkip: () {
        Navigator.pushNamedAndRemoveUntil(
            context, RouteManager.landingPage, (route) => false);
      },
      showBackButton: false,
      showSkipButton: false,
      skip: const Icon(FontAwesomeIcons.forwardFast),
      next: const Icon(FontAwesomeIcons.arrowRight),
      done:
          const Text("Got it!", style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0))),
    );
  }
}
