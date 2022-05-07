import 'package:amzx/common_widgets/box_text.dart';
import 'package:amzx/common_widgets/company_logo_text.dart';
import 'package:amzx/common_widgets/custom_scaffold.dart';
import 'package:amzx/common_widgets/dollar_sign_box.dart';
import 'package:amzx/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../common_widgets/buttons/filled_button.dart';
import '../common_widgets/buttons/outline_button.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    void handleLearnMoreTap() {
      Navigator.pushNamedAndRemoveUntil(
          context, RouteManager.introductionPage, (_) => false);
    }

    void handleSignInTap() {
      Navigator.pushNamed(
        context, RouteManager.loginPage,);
    }

    return CustomScaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 28.0,
            right: 28.0,
            top: 110.0,
          ),
          child: Column(
            children: [
              const CompanyLogoWithText(),
              const Padding(
                padding: EdgeInsets.only(top: 80.0),
                child: DollarSignBox(
                  text: 'Discover new ways to conquer Amazon!',
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: HeadingOneText(
                  text: 'Sell on Amazon Smarter And Easier Than Ever Before',
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 28.0),
                child: SubHeadingText(
                  text:
                      'Fully automated profitable ads for Amazon PPC & Amazon Merch',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: FilledButton(
                  onTap: () => handleLearnMoreTap(),
                  text: 'Learn More',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: OutlineButton(
                  onTap: () => handleSignInTap(),
                  text: 'Sign in',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
