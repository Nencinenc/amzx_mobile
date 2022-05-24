import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class ProductNetwork {
  ProductNetwork();

  factory ProductNetwork.fromJson(Map<String, dynamic> json) =>
      _$ProductNetworkFromJson(json);

  Map<String, dynamic> toJson() => _$ProductNetworkToJson(this);
}
