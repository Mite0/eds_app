part of 'photo_cubit.dart';

@freezed
class PhotoState with _$PhotoState {
  factory PhotoState({
    required List<Photo> photos,
    required Album album,
    required int selectedId,
  }) = _PhotoState;

  factory PhotoState.initState(Album album) => PhotoState(
        photos: [],
        album: album,
        selectedId: -1,
      );
}
