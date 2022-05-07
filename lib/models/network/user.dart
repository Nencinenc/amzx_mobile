import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class UserNetwork {
  final String id;
  final String fullName;
  final String email;
  final int dateCreated;
  final int dateUpdated;

  UserNetwork({
    required this.id,
    required this.fullName,
    required this.email,
    required this.dateCreated,
    required this.dateUpdated,
});

  factory UserNetwork.fromJson(Map<String, dynamic> json) => _$UserNetworkFromJson(json);

  Map<String, dynamic> toJson() => _$UserNetworkToJson(this);
}