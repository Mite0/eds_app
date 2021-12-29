import 'package:eds_app/data_source/remote/model/post/post_response.dart';

class Post {
  // final int userId;
  final int id;
  final String title;
  final String body;

  //TODO check require for necessity
  Post({
    // this.userId = 0,
    this.id = 0,
    this.title = '',
    this.body = '',
  });

  Post.fromResponse(PostResponse response)
      : id = response.id,
        title = response.title,
        body = response.body;
}
