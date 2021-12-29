import 'package:eds_app/data_source/remote/model/user/address_response.dart';
import 'package:eds_app/data_source/remote/model/user/company_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_response.g.dart';

@JsonSerializable()
class UserResponse {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'username')
  final String userName;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'phone')
  final String phone;
  @JsonKey(name:'website')
  final String website;
  @JsonKey(name:'address')
  final AddressResponse address;
  @JsonKey(name:'company')
  final CompanyResponse company;

  UserResponse({
    required this.id,
    required this.name,
    required this.userName,
    required this.email,
    required this.phone,
    required this.website,
    required this.address,
    required this.company,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}

