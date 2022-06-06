import 'package:flutter/cupertino.dart';

const double scrollOffset = 20;
double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;
double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;

final forgotPasswordUrl = Uri.parse('google.com');
const String logoWithTextPath = 'assets/images/logo2.png';
const String lwaWithAmazonPath = 'assets/images/lwa_btn.jpeg';
final amazonBtnPath = Uri.parse(
    'https://www.amazon.com/ap/oa?client_id=amzn1.application-oa2-client.45d5e79f3d8942b5a774c0ef884d4180&scope=advertising::campaign_management&response_type=code&redirect_uri=https://amzx.io:4200/auth/lwa');

//regions
const europeAndIndia = 'Europe & India';
const northAmerica = 'North America';
const farEast = 'Far East';
