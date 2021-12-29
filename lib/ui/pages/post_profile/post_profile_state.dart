part of 'post_profile_cubit.dart';

@freezed
class PostProfileState with _$PostProfileState {
  factory PostProfileState({
    required Post post,
    required User user,
    required List<Comment> comments,
    required Comment newComment,
  }) = _PostProfileState;

  factory PostProfileState.initState(
    Post post,
    User user,
  ) =>
      PostProfileState(
        post: post,
        user: user,
        comments: [],
        newComment: Comment(),
      );
}
