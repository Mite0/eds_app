// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) => UserResponse(
      id: json['id'] as int,
      name: json['name'] as String,
      userName: json['username'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      website: json['website'] as String,
      address:
          AddressResponse.fromJson(json['address'] as Map<String, dynamic>),
      company:
          CompanyResponse.fromJson(json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserResponseToJson(UserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.userName,
      'email': instance.email,
      'phone': instance.phone,
      'website': instance.website,
      'address': instance.address,
      'company': instance.company,
    };
