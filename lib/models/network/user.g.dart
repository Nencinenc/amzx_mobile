// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserNetwork _$UserNetworkFromJson(Map<String, dynamic> json) => UserNetwork(
      id: json['id'] as String,
      fullName: json['fullName'] as String,
      email: json['email'] as String,
      dateCreated: json['dateCreated'] as int,
      dateUpdated: json['dateUpdated'] as int,
    );

Map<String, dynamic> _$UserNetworkToJson(UserNetwork instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
      'dateCreated': instance.dateCreated,
      'dateUpdated': instance.dateUpdated,
    };
