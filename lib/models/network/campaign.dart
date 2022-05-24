import 'package:json_annotation/json_annotation.dart';

part 'campaign.g.dart';

@JsonSerializable()
class CampaignNetwork {
  CampaignNetwork();

  factory CampaignNetwork.fromJson(Map<String, dynamic> json) =>
      _$CampaignNetworkFromJson(json);

  Map<String, dynamic> toJson() => _$CampaignNetworkToJson(this);
}
