import 'package:eds_app/domain/models/album.dart';
import 'package:eds_app/domain/models/photo.dart';
import 'package:eds_app/domain/repository/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_cubit.freezed.dart';

part 'photo_state.dart';

class PhotoCubit extends Cubit<PhotoState> {
  PhotoCubit(Album album) : super(PhotoState.initState(album));
  final usersRepository = UserRepository();

  void getPhotos() {
    usersRepository
        .getPhotos(state.album.id)
        .then((value) => emit(state.copyWith(photos: value,selectedId: 0)));
  }

  void photoChanged(int selectedId) {
    emit(state.copyWith(selectedId: selectedId));
  }
}
