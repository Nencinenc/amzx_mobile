import 'package:amzx/pages/navbar_screens/campaigns/campaign_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common_widgets/typography/custom_text.dart';
import '../../../providers/camapings_page_provider.dart';

part 'state_tag.dart';
part 'target_type_tag.dart';

class CampaignsPage extends StatelessWidget {
  const CampaignsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CampaignsPageProvider>(
        builder: (context, CampaignsPageProvider campaignsPageProvider, _) {
      return ListView.builder(
        itemCount: campaignsPageProvider.campaigns.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 4.0,
            ),
            child: CampaignCard(
              campaign: campaignsPageProvider.campaigns[index],
            ),
          );
        },
      );
    });
  }
}
