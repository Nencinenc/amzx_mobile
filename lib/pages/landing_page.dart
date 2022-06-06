import 'package:amzx/common_widgets/%20common/company_logo_text.dart';
import 'package:amzx/common_widgets/%20common/custom_scaffold.dart';
import 'package:amzx/routes/routes.dart';
import 'package:flutter/cupertino.dart';

import '../common_widgets/ common/dollar_sign_box.dart';
import '../common_widgets/buttons/filled_button.dart';
import '../common_widgets/buttons/outline_button.dart';
import '../common_widgets/typography/custom_text.dart';
import '../configuration/interceptors/enums.dart';
import '../shared/app_colors.dart';

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
        context,
        RouteManager.loginPage,
      );
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
                child: CustomText(
                  text: 'Sell on Amazon Smarter And Easier Than Ever Before',
                  textSize: TextSize.xxxxl,
                  textColor: primaryTextColor,
                  textWeight: WeightSize.ultraBold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 28.0),
                child: CustomText(
                  text:
                      'Fully automated profitable ads for Amazon PPC & Amazon Merch',
                  textSize: TextSize.xxl,
                  textColor: primaryTextColor,
                  textWeight: WeightSize.demiBold,
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
