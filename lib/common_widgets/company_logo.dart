import 'package:flutter/cupertino.dart';

class CompanyLogo extends StatelessWidget {
  const CompanyLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/logo2.png",
      height: 70,
    );
  }
}