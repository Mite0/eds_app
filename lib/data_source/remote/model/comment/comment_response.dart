import 'package:json_annotation/json_annotation.dart';

part 'comment_response.g.dart';

@JsonSerializable()
class CommentResponse {
  @JsonKey(name: 'postId')
  final int postId;
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'email')
  final String email;
  @JsonKey(name: 'body')
  final String body;

  CommentResponse({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  factory CommentResponse.fromJson(Map<String, dynamic> json) =>
      _$CommentResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CommentResponseToJson(this);
}

