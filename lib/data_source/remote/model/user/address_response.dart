
import 'package:json_annotation/json_annotation.dart';

part 'address_response.g.dart';

@JsonSerializable()
class AddressResponse {
  @JsonKey(name: 'street')
  final String street;
  @JsonKey(name: 'suite')
  final String building;
  @JsonKey(name: 'city')
  final String city;
  @JsonKey(name: 'zipcode')
  final String zipcode;

  AddressResponse({
    required this.street,
    required this.building,
    required this.city,
    required this.zipcode,
  });

  factory AddressResponse.fromJson(Map<String, dynamic> json) =>
      _$AddressResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddressResponseToJson(this);
}

