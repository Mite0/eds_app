import 'package:eds_app/data_source/remote/model/user/address_response.dart';
import 'package:eds_app/data_source/remote/model/user/company_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'photo_response.g.dart';

@JsonSerializable()
class PhotoResponse {
  @JsonKey(name: 'albumId')
  final int albumId;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'url')
  final String photoUrl;
  @JsonKey(name: 'thumbnailUrl')
  final String smallPhotoUrl;

  PhotoResponse({
    required this.albumId,
    required this.id,
    required this.title,
    required this.photoUrl,
    required this.smallPhotoUrl,
  });

  factory PhotoResponse.fromJson(Map<String, dynamic> json) =>
      _$PhotoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoResponseToJson(this);
}

