// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'albums_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AlbumsStateTearOff {
  const _$AlbumsStateTearOff();

  _AlbumsState call({required List<Album> albums, required User user}) {
    return _AlbumsState(
      albums: albums,
      user: user,
    );
  }
}

/// @nodoc
const $AlbumsState = _$AlbumsStateTearOff();

/// @nodoc
mixin _$AlbumsState {
  List<Album> get albums => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlbumsStateCopyWith<AlbumsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumsStateCopyWith<$Res> {
  factory $AlbumsStateCopyWith(
          AlbumsState value, $Res Function(AlbumsState) then) =
      _$AlbumsStateCopyWithImpl<$Res>;
  $Res call({List<Album> albums, User user});
}

/// @nodoc
class _$AlbumsStateCopyWithImpl<$Res> implements $AlbumsStateCopyWith<$Res> {
  _$AlbumsStateCopyWithImpl(this._value, this._then);

  final AlbumsState _value;
  // ignore: unused_field
  final $Res Function(AlbumsState) _then;

  @override
  $Res call({
    Object? albums = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      albums: albums == freezed
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<Album>,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
abstract class _$AlbumsStateCopyWith<$Res>
    implements $AlbumsStateCopyWith<$Res> {
  factory _$AlbumsStateCopyWith(
          _AlbumsState value, $Res Function(_AlbumsState) then) =
      __$AlbumsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Album> albums, User user});
}

/// @nodoc
class __$AlbumsStateCopyWithImpl<$Res> extends _$AlbumsStateCopyWithImpl<$Res>
    implements _$AlbumsStateCopyWith<$Res> {
  __$AlbumsStateCopyWithImpl(
      _AlbumsState _value, $Res Function(_AlbumsState) _then)
      : super(_value, (v) => _then(v as _AlbumsState));

  @override
  _AlbumsState get _value => super._value as _AlbumsState;

  @override
  $Res call({
    Object? albums = freezed,
    Object? user = freezed,
  }) {
    return _then(_AlbumsState(
      albums: albums == freezed
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<Album>,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_AlbumsState implements _AlbumsState {
  _$_AlbumsState({required this.albums, required this.user});

  @override
  final List<Album> albums;
  @override
  final User user;

  @override
  String toString() {
    return 'AlbumsState(albums: $albums, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AlbumsState &&
            const DeepCollectionEquality().equals(other.albums, albums) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(albums),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$AlbumsStateCopyWith<_AlbumsState> get copyWith =>
      __$AlbumsStateCopyWithImpl<_AlbumsState>(this, _$identity);
}

abstract class _AlbumsState implements AlbumsState {
  factory _AlbumsState({required List<Album> albums, required User user}) =
      _$_AlbumsState;

  @override
  List<Album> get albums;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$AlbumsStateCopyWith<_AlbumsState> get copyWith =>
      throw _privateConstructorUsedError;
}
