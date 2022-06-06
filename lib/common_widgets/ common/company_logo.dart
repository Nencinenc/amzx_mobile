import 'package:flutter/cupertino.dart';

import '../../configuration/constants.dart';

class CompanyLogo extends StatelessWidget {
  const CompanyLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      logoWithTextPath,
      height: 70,
    );
  }
}
