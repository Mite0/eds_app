part of 'posts_cubit.dart';

@freezed
class PostsState with _$PostsState {
  factory PostsState({
    required List<Post> posts,
    required User user,
  }) = _PostsState;

  factory PostsState.initState(List<Post> posts, User user) => PostsState(
    posts: posts,
    user: user,
  );
}
