import 'package:amzx/common_widgets/typography/custom_text.dart';
import 'package:amzx/models/network/campaign.dart';
import 'package:amzx/pages/navbar_screens/campaigns/campaigns_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: StateTag(
                  state: campaign.state,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TargetTypeTag(
                  targetType: campaign.targetType,
                ),
              ),
            ],
          ),
          CustomText(
            text: campaign.name,
          ),
          CustomText(
            text: campaign.startDate.toString(), //will change
          ),
          CustomText(
            text: campaign.endDate.toString(), //will change
          ),
          const CustomText(
            text: "113,61 EUR",
          ),
          const CustomText(
            text: "619,83 EUR",
          ),
          const CustomText(
            text: "116",
          ),
          const CustomText(
            text: "0,98 EUR",
          ),
        ],
      ),
    );
  }
}
