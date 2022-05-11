import 'package:amzx/models/network/campaign.dart';
import 'package:amzx/pages/navbar_screens/campaigns/campaign_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common_widgets/typography/custom_text.dart';

part 'state_tag.dart';
part 'target_type_tag.dart';

class CampaignsPage extends StatelessWidget {
  CampaignsPage({Key? key}) : super(key: key);

  final campaigns = [
    Campaign(
      dateCreated: DateTime.now(),
      dateUpdated: DateTime.now(),
      campaignId: '123',
      campaignType: 'kur',
      dailyBudget: 100,
      startDate: DateTime.now(),
      endDate: DateTime.now(),
      name: 'AGGR NEPTUN EXPORTED FEB',
      portfolioId: '123',
      premiumBidAdjustment: 'dynamic Up and Down',
      state: 'Delivering',
      targetType: 'Manual',
      amazonAdsProfileId: '421',
    ),
    Campaign(
      dateCreated: DateTime.now(),
      dateUpdated: DateTime.now(),
      campaignId: '123',
      campaignType: 'kur',
      dailyBudget: 100,
      startDate: DateTime.now(),
      endDate: DateTime.now(),
      name: 'AGGR NEPTUN EXPORTED FEB',
      portfolioId: '123',
      premiumBidAdjustment: 'dynamic Up and Down',
      state: 'Delivering',
      targetType: 'Manual',
      amazonAdsProfileId: '421',
    ),
    Campaign(
      dateCreated: DateTime.now(),
      dateUpdated: DateTime.now(),
      campaignId: '123',
      campaignType: 'kur',
      dailyBudget: 100,
      startDate: DateTime.now(),
      endDate: DateTime.now(),
      name: 'AGGR NEPTUN EXPORTED FEB',
      portfolioId: '123',
      premiumBidAdjustment: 'dynamic Up and Down',
      state: 'Delivering',
      targetType: 'Manual',
      amazonAdsProfileId: '421',
    ),
    Campaign(
      dateCreated: DateTime.now(),
      dateUpdated: DateTime.now(),
      campaignId: '123',
      campaignType: 'kur',
      dailyBudget: 100,
      startDate: DateTime.now(),
      endDate: DateTime.now(),
      name: 'AGGR NEPTUN EXPORTED FEB',
      portfolioId: '123',
      premiumBidAdjustment: 'dynamic Up and Down',
      state: 'Delivering',
      targetType: 'Manual',
      amazonAdsProfileId: '421',
    ),
    Campaign(
      dateCreated: DateTime.now(),
      dateUpdated: DateTime.now(),
      campaignId: '123',
      campaignType: 'kur',
      dailyBudget: 100,
      startDate: DateTime.now(),
      endDate: DateTime.now(),
      name: 'AGGR NEPTUN EXPORTED FEB',
      portfolioId: '123',
      premiumBidAdjustment: 'dynamic Up and Down',
      state: 'Delivering',
      targetType: 'Manual',
      amazonAdsProfileId: '421',
    ),
    Campaign(
      dateCreated: DateTime.now(),
      dateUpdated: DateTime.now(),
      campaignId: '123',
      campaignType: 'kur',
      dailyBudget: 100,
      startDate: DateTime.now(),
      endDate: DateTime.now(),
      name: 'AGGR NEPTUN EXPORTED FEB',
      portfolioId: '123',
      premiumBidAdjustment: 'dynamic Up and Down',
      state: 'Delivering',
      targetType: 'Manual',
      amazonAdsProfileId: '421',
    ),
    Campaign(
      dateCreated: DateTime.now(),
      dateUpdated: DateTime.now(),
      campaignId: '123',
      campaignType: 'kur',
      dailyBudget: 100,
      startDate: DateTime.now(),
      endDate: DateTime.now(),
      name: 'AGGR NEPTUN EXPORTED FEB',
      portfolioId: '123',
      premiumBidAdjustment: 'dynamic Up and Down',
      state: 'Delivering',
      targetType: 'Manual',
      amazonAdsProfileId: '421',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: campaigns.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 4.0,
          ),
          child: CampaignCard(
            campaign: campaigns[index],
          ),
        );
      },
    );
  }
}
