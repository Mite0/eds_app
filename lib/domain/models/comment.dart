import 'package:eds_app/data_source/remote/model/comment/comment_response.dart';

class Comment {
  String name;
  String email;
  String body;

  //TODO check require for necessity
  Comment({
    this.name = '',
    this.email = '',
    this.body = '',
  });

  Comment.fromResponse(CommentResponse response)
      : name = response.name,
        email = response.email,
        body = response.body;

  CommentResponse toRequest(int postId) {
    return CommentResponse(
      postId: postId,
      id: 0,
      name: name,
      email: email,
      body: body,
    );
  }
}
