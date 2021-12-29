import 'package:eds_app/domain/models/album.dart';
import 'package:eds_app/domain/models/photo.dart';
import 'package:eds_app/domain/models/post.dart';
import 'package:eds_app/domain/models/user.dart';
import 'package:eds_app/domain/repository/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_cubit.freezed.dart';

part 'user_profile_state.dart';

class UserProfileCubit extends Cubit<UserProfileState> {
  UserProfileCubit(User user) : super(UserProfileState.initState(user));
  final usersRepository = UserRepository();

  void getPosts() {
    usersRepository
        .getPosts(state.user.userId)
        .then((value) => emit(state.copyWith(posts: value)));
  }

  void getAlbums() {
    usersRepository.getAlbums(state.user.userId).then((value) {
      emit(state.copyWith(albums: value));
      for (var i = 0; i < 3 && i < value.length; i++) {
        getPhoto(i);
      }
    });
  }

  void getPhoto(int albumIndex) {
    usersRepository
        .getPhotoFromAlbum(state.albums[albumIndex].id)
        .then((value) {
      final ss = <Photo>[];
      ss.addAll(state.photos);
      ss[albumIndex] = value;
      emit(state.copyWith(photos: ss));
    });
  }
}
