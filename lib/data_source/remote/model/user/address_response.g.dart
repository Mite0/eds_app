// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressResponse _$AddressResponseFromJson(Map<String, dynamic> json) =>
    AddressResponse(
      street: json['street'] as String,
      building: json['suite'] as String,
      city: json['city'] as String,
      zipcode: json['zipcode'] as String,
    );

Map<String, dynamic> _$AddressResponseToJson(AddressResponse instance) =>
    <String, dynamic>{
      'street': instance.street,
      'suite': instance.building,
      'city': instance.city,
      'zipcode': instance.zipcode,
    };
