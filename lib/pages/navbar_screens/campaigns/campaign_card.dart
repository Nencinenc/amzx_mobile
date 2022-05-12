import 'package:amzx/common_widgets/typography/custom_text.dart';
import 'package:amzx/models/ui/campaign.dart';
import 'package:amzx/pages/navbar_screens/campaigns/campaigns_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../common_widgets/buttons/custom_icon_button.dart';
import '../../../configuration/interceptors/enums.dart';

part 'campaign_key.dart';

class CampaignCard extends StatelessWidget {
  final Campaign campaign;

  const CampaignCard({
    Key? key,
    required this.campaign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: CustomText(
                text: campaign.name,
                textSize: TextSize.l,
                textWeight: WeightSize.bold,
                textColor: Colors.black,
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 3.0),
                      child: Row(
                        children: const [
                          _CampaignKey(text: "Start Date: "),
                          CustomText(
                            text: "10.5.2022", //Will change
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 3.0),
                      child: Row(
                        children: const [
                          _CampaignKey(text: "End Date: "),
                          CustomText(
                            text: "No end date", //Will change
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 3.0),
                      child: Row(
                        children: const [
                          _CampaignKey(text: "ACoS: "),
                          CustomText(
                            text: "18,33 %", //Will change
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: const [
                        _CampaignKey(text: "Spend: "),
                        CustomText(
                          text: "1,405 EUR", //Will change
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 9.0),
                          child: _CampaignKey(text: "Sales: "),
                        ),
                        CustomText(
                          text: "14,053 EUR", //Will change
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(
            height: 3,
            thickness: 1,
            color: Colors.grey,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomIconButton(
                  text: "Update",
                  icon: FontAwesomeIcons.pencil,
                  color: Colors.black,
                  size: 15,
                ),
                const CustomIconButton(
                  text: "Automation",
                  icon: FontAwesomeIcons.gears,
                  color: Colors.black,
                  size: 15,
                ),
                StateTag(
                  state: campaign.state,
                ),
                TargetTypeTag(
                  targetType: campaign.targetType,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
