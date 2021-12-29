import 'package:eds_app/data_source/remote/model/user/address_response.dart';
import 'package:eds_app/data_source/remote/model/user/company_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'album_response.g.dart';

@JsonSerializable()
class AlbumResponse {
  @JsonKey(name: 'userId')
  final int userId;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'title')
  final String title;

  AlbumResponse({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory AlbumResponse.fromJson(Map<String, dynamic> json) =>
      _$AlbumResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumResponseToJson(this);
}

