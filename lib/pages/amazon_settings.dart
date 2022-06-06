import 'package:amzx/common_widgets/%20common/custom_appbar.dart';
import 'package:amzx/common_widgets/%20common/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../common_widgets/ common/connection_indicator.dart';
import '../common_widgets/typography/custom_text.dart';
import '../configuration/constants.dart';
import '../configuration/interceptors/enums.dart';
import '../routes/routes.dart';
import '../shared/app_colors.dart';

class AmazonSettings extends StatelessWidget {
  const AmazonSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 18.0),
                child: CustomText(
                  text: 'Amazon configuration',
                  textColor: Colors.white,
                  textSize: TextSize.xxl,
                  textWeight: WeightSize.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 18.0),
                child: ConnectionIndicator(
                  isOnline: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: ToggleSwitch(
                  minWidth: deviceWidth(context),
                  minHeight: 50.0,
                  fontSize: 12.0,
                  initialLabelIndex: 1,
                  activeBgColor: const [primaryBackground],
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.white,
                  inactiveFgColor: Colors.grey[900],
                  totalSwitches: 3,
                  labels: const [europeAndIndia, northAmerica, farEast],
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, RouteManager.amazonPage),
                  child: Image.asset(
                    lwaWithAmazonPath,
                    fit: BoxFit.cover,
                    height: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
