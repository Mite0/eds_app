part of 'albums_cubit.dart';

@freezed
class AlbumsState with _$AlbumsState {
  factory AlbumsState({
    required List<Album> albums,
    required User user,
  }) = _AlbumsState;

  factory AlbumsState.initState(List<Album> albums, User user) => AlbumsState(
    albums: albums,
    user: user,
  );
}
