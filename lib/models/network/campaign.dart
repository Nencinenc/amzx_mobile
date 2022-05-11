class Campaign {
  final DateTime dateCreated;
  final DateTime dateUpdated;
  final String campaignId;
  final String campaignType;
  final double dailyBudget;
  final DateTime startDate;
  final DateTime endDate;
  final String name;
  final String portfolioId;
  final String premiumBidAdjustment;
  final String state;
  final String targetType;
  final String amazonAdsProfileId;

  Campaign({
    required this.dateCreated,
    required this.dateUpdated,
    required this.campaignId,
    required this.campaignType,
    required this.dailyBudget,
    required this.startDate,
    required this.endDate,
    required this.name,
    required this.portfolioId,
    required this.premiumBidAdjustment,
    required this.state,
    required this.targetType,
    required this.amazonAdsProfileId,
  });
}
