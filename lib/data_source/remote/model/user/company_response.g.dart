// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyResponse _$CompanyResponseFromJson(Map<String, dynamic> json) =>
    CompanyResponse(
      name: json['name'] as String,
      catchPhrase: json['catchPhrase'] as String,
      areaOfWork: json['bs'] as String,
    );

Map<String, dynamic> _$CompanyResponseToJson(CompanyResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'catchPhrase': instance.catchPhrase,
      'bs': instance.areaOfWork,
    };
