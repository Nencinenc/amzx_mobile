import 'package:flutter/cupertino.dart';

class CompanyLogoWithText extends StatelessWidget {
  const CompanyLogoWithText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/logo2.png",
      fit: BoxFit.contain,
    );
  }
}