// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlbumResponse _$AlbumResponseFromJson(Map<String, dynamic> json) =>
    AlbumResponse(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
    );

Map<String, dynamic> _$AlbumResponseToJson(AlbumResponse instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
    };
