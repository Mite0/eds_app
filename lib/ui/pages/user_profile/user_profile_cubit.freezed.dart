// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserProfileStateTearOff {
  const _$UserProfileStateTearOff();

  _UserProfileState call(
      {required User user,
      required List<Post> posts,
      required List<Album> albums,
      required List<Photo> photos}) {
    return _UserProfileState(
      user: user,
      posts: posts,
      albums: albums,
      photos: photos,
    );
  }
}

/// @nodoc
const $UserProfileState = _$UserProfileStateTearOff();

/// @nodoc
mixin _$UserProfileState {
  User get user => throw _privateConstructorUsedError;
  List<Post> get posts => throw _privateConstructorUsedError;
  List<Album> get albums => throw _privateConstructorUsedError;
  List<Photo> get photos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserProfileStateCopyWith<UserProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileStateCopyWith<$Res> {
  factory $UserProfileStateCopyWith(
          UserProfileState value, $Res Function(UserProfileState) then) =
      _$UserProfileStateCopyWithImpl<$Res>;
  $Res call(
      {User user, List<Post> posts, List<Album> albums, List<Photo> photos});
}

/// @nodoc
class _$UserProfileStateCopyWithImpl<$Res>
    implements $UserProfileStateCopyWith<$Res> {
  _$UserProfileStateCopyWithImpl(this._value, this._then);

  final UserProfileState _value;
  // ignore: unused_field
  final $Res Function(UserProfileState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? posts = freezed,
    Object? albums = freezed,
    Object? photos = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      albums: albums == freezed
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<Album>,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }
}

/// @nodoc
abstract class _$UserProfileStateCopyWith<$Res>
    implements $UserProfileStateCopyWith<$Res> {
  factory _$UserProfileStateCopyWith(
          _UserProfileState value, $Res Function(_UserProfileState) then) =
      __$UserProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {User user, List<Post> posts, List<Album> albums, List<Photo> photos});
}

/// @nodoc
class __$UserProfileStateCopyWithImpl<$Res>
    extends _$UserProfileStateCopyWithImpl<$Res>
    implements _$UserProfileStateCopyWith<$Res> {
  __$UserProfileStateCopyWithImpl(
      _UserProfileState _value, $Res Function(_UserProfileState) _then)
      : super(_value, (v) => _then(v as _UserProfileState));

  @override
  _UserProfileState get _value => super._value as _UserProfileState;

  @override
  $Res call({
    Object? user = freezed,
    Object? posts = freezed,
    Object? albums = freezed,
    Object? photos = freezed,
  }) {
    return _then(_UserProfileState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      albums: albums == freezed
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<Album>,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }
}

/// @nodoc

class _$_UserProfileState implements _UserProfileState {
  _$_UserProfileState(
      {required this.user,
      required this.posts,
      required this.albums,
      required this.photos});

  @override
  final User user;
  @override
  final List<Post> posts;
  @override
  final List<Album> albums;
  @override
  final List<Photo> photos;

  @override
  String toString() {
    return 'UserProfileState(user: $user, posts: $posts, albums: $albums, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserProfileState &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.posts, posts) &&
            const DeepCollectionEquality().equals(other.albums, albums) &&
            const DeepCollectionEquality().equals(other.photos, photos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(posts),
      const DeepCollectionEquality().hash(albums),
      const DeepCollectionEquality().hash(photos));

  @JsonKey(ignore: true)
  @override
  _$UserProfileStateCopyWith<_UserProfileState> get copyWith =>
      __$UserProfileStateCopyWithImpl<_UserProfileState>(this, _$identity);
}

abstract class _UserProfileState implements UserProfileState {
  factory _UserProfileState(
      {required User user,
      required List<Post> posts,
      required List<Album> albums,
      required List<Photo> photos}) = _$_UserProfileState;

  @override
  User get user;
  @override
  List<Post> get posts;
  @override
  List<Album> get albums;
  @override
  List<Photo> get photos;
  @override
  @JsonKey(ignore: true)
  _$UserProfileStateCopyWith<_UserProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
