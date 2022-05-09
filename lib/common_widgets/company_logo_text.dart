import 'package:flutter/cupertino.dart';

import '../configuration/constants.dart';

class CompanyLogoWithText extends StatelessWidget {
  const CompanyLogoWithText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      logoWithTextPath,
      fit: BoxFit.contain,
    );
  }
}
