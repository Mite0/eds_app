import 'package:eds_app/domain/models/comment.dart';
import 'package:eds_app/domain/models/post.dart';
import 'package:eds_app/domain/models/user.dart';
import 'package:eds_app/domain/repository/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_profile_cubit.freezed.dart';

part 'post_profile_state.dart';

class PostProfileCubit extends Cubit<PostProfileState> {
  PostProfileCubit(Post post, User user)
      : super(PostProfileState.initState(post, user));
  final usersRepository = UserRepository();

  void getComments() {
    usersRepository
        .getComment(state.post.id)
        .then((value) => emit(state.copyWith(comments: value)));
  }

  void updateEmail(String email) {
    state.newComment.email = email;
    state.copyWith(newComment: state.newComment);
  }

  void updateName(String name) {
    state.newComment.name = name;
    state.copyWith(newComment: state.newComment);
  }

  void updateBody(String body) {
    state.newComment.body = body;
    state.copyWith(newComment: state.newComment);
  }

  void sendComment() {
    usersRepository
        .sendComment(state.newComment, state.post.id)
        .then((value) => print('send comment success'))
        .catchError((error) => print('send comment error'));
  }
}
