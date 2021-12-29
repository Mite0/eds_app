part of 'user_profile_cubit.dart';

@freezed
class UserProfileState with _$UserProfileState {
  factory UserProfileState({
    required User user,
    required List<Post> posts,
    required List<Album> albums,
    required List<Photo> photos,
  }) = _UserProfileState;

  //TODO change init photos
  factory UserProfileState.initState(User user) => UserProfileState(
        user: user,
        posts: [],
        albums: [],
        photos: [Photo(), Photo(), Photo()],
      );
}
