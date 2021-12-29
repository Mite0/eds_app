import 'package:eds_app/domain/models/post.dart';
import 'package:eds_app/domain/models/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'posts_cubit.freezed.dart';

part 'posts_state.dart';

class PostsCubit extends Cubit<PostsState> {
  PostsCubit(List<Post> posts, User user)
      : super(PostsState.initState(posts, user));
// final usersRepository = UserRepository();

}
