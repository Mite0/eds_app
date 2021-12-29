// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoResponse _$PhotoResponseFromJson(Map<String, dynamic> json) =>
    PhotoResponse(
      albumId: json['albumId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      photoUrl: json['url'] as String,
      smallPhotoUrl: json['thumbnailUrl'] as String,
    );

Map<String, dynamic> _$PhotoResponseToJson(PhotoResponse instance) =>
    <String, dynamic>{
      'albumId': instance.albumId,
      'id': instance.id,
      'title': instance.title,
      'url': instance.photoUrl,
      'thumbnailUrl': instance.smallPhotoUrl,
    };
