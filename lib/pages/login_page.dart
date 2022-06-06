import 'package:amzx/common_widgets/%20common/custom_appbar.dart';
import 'package:amzx/common_widgets/%20common/custom_scaffold.dart';
import 'package:amzx/common_widgets/%20common/eye_icon.dart';
import 'package:amzx/common_widgets/typography/custom_text.dart';
import 'package:amzx/repositories/user.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../common_widgets/ common/custom_form_field.dart';
import '../common_widgets/buttons/gradient_button.dart';
import '../configuration/constants.dart';
import '../configuration/interceptors/enums.dart';
import '../configuration/locator.dart';
import '../shared/app_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final UserRepository userRepository = getIt<UserRepository>();
  bool hidePassword = true;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void handleLogin(BuildContext context) async {
    await userRepository.login(
      _emailController.text,
      _passwordController.text,
      context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(
        backgroundColor: Colors.transparent,
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: LayoutBuilder(builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 78.0,
                    left: 28.0,
                    right: 28.0,
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 14.0),
                        child: CustomText(
                          text: 'Existing User',
                          textColor: Colors.white,
                          textSize: TextSize.xxxl,
                          textWeight: WeightSize.ultraBold,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 28.0),
                        child: CustomText(
                          text: 'Please log in to continue',
                          textColor: primaryTextColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 18.0),
                        child: CustomForField(
                          title: 'Email',
                          controller: _emailController,
                          textInputType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 28.0),
                        child: CustomForField(
                          title: 'Password',
                          controller: _passwordController,
                          hideText: hidePassword,
                          icon: EyeIcon(
                            onPressed: () {
                              setState(() {
                                hidePassword = !hidePassword;
                              });
                            },
                            hidePassword: hidePassword,
                          ),
                        ),
                      ),
                      GradientButton(
                        text: "LET'S GO",
                        onTap: () => handleLogin(context),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              child: const CustomText(
                                text: 'Not registered? ',
                                textColor: primaryTextColor,
                              ),
                              onTap: () async {
                                await launchUrl(forgotPasswordUrl);
                              },
                            ),
                            GestureDetector(
                              child: const CustomText(
                                text: 'Reset password',
                                textColor: primaryTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
