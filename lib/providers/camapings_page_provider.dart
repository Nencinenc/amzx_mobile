import 'package:flutter/cupertino.dart';

import '../models/ui/campaign.dart';

class CampaignsPageProvider extends ChangeNotifier {
  final List<Campaign> _campaigns = [
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

  List<Campaign> get campaigns => _campaigns;

  set addProducts(List<Campaign> value) {
    for (final campaign in value) {
      if (!_campaigns.contains(campaign)) {
        _campaigns.add(campaign);
      }
    }
    notifyListeners();
  }

  set removeProduct(Campaign value) {
    _campaigns.removeWhere((campaign) => campaign == value);
    notifyListeners();
  }
}
