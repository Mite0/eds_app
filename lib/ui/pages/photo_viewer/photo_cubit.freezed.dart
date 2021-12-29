// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'photo_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PhotoStateTearOff {
  const _$PhotoStateTearOff();

  _PhotoState call(
      {required List<Photo> photos,
      required Album album,
      required int selectedId}) {
    return _PhotoState(
      photos: photos,
      album: album,
      selectedId: selectedId,
    );
  }
}

/// @nodoc
const $PhotoState = _$PhotoStateTearOff();

/// @nodoc
mixin _$PhotoState {
  List<Photo> get photos => throw _privateConstructorUsedError;
  Album get album => throw _privateConstructorUsedError;
  int get selectedId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotoStateCopyWith<PhotoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoStateCopyWith<$Res> {
  factory $PhotoStateCopyWith(
          PhotoState value, $Res Function(PhotoState) then) =
      _$PhotoStateCopyWithImpl<$Res>;
  $Res call({List<Photo> photos, Album album, int selectedId});
}

/// @nodoc
class _$PhotoStateCopyWithImpl<$Res> implements $PhotoStateCopyWith<$Res> {
  _$PhotoStateCopyWithImpl(this._value, this._then);

  final PhotoState _value;
  // ignore: unused_field
  final $Res Function(PhotoState) _then;

  @override
  $Res call({
    Object? photos = freezed,
    Object? album = freezed,
    Object? selectedId = freezed,
  }) {
    return _then(_value.copyWith(
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
      album: album == freezed
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album,
      selectedId: selectedId == freezed
          ? _value.selectedId
          : selectedId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PhotoStateCopyWith<$Res> implements $PhotoStateCopyWith<$Res> {
  factory _$PhotoStateCopyWith(
          _PhotoState value, $Res Function(_PhotoState) then) =
      __$PhotoStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Photo> photos, Album album, int selectedId});
}

/// @nodoc
class __$PhotoStateCopyWithImpl<$Res> extends _$PhotoStateCopyWithImpl<$Res>
    implements _$PhotoStateCopyWith<$Res> {
  __$PhotoStateCopyWithImpl(
      _PhotoState _value, $Res Function(_PhotoState) _then)
      : super(_value, (v) => _then(v as _PhotoState));

  @override
  _PhotoState get _value => super._value as _PhotoState;

  @override
  $Res call({
    Object? photos = freezed,
    Object? album = freezed,
    Object? selectedId = freezed,
  }) {
    return _then(_PhotoState(
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
      album: album == freezed
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album,
      selectedId: selectedId == freezed
          ? _value.selectedId
          : selectedId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PhotoState implements _PhotoState {
  _$_PhotoState(
      {required this.photos, required this.album, required this.selectedId});

  @override
  final List<Photo> photos;
  @override
  final Album album;
  @override
  final int selectedId;

  @override
  String toString() {
    return 'PhotoState(photos: $photos, album: $album, selectedId: $selectedId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PhotoState &&
            const DeepCollectionEquality().equals(other.photos, photos) &&
            const DeepCollectionEquality().equals(other.album, album) &&
            const DeepCollectionEquality()
                .equals(other.selectedId, selectedId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(photos),
      const DeepCollectionEquality().hash(album),
      const DeepCollectionEquality().hash(selectedId));

  @JsonKey(ignore: true)
  @override
  _$PhotoStateCopyWith<_PhotoState> get copyWith =>
      __$PhotoStateCopyWithImpl<_PhotoState>(this, _$identity);
}

abstract class _PhotoState implements PhotoState {
  factory _PhotoState(
      {required List<Photo> photos,
      required Album album,
      required int selectedId}) = _$_PhotoState;

  @override
  List<Photo> get photos;
  @override
  Album get album;
  @override
  int get selectedId;
  @override
  @JsonKey(ignore: true)
  _$PhotoStateCopyWith<_PhotoState> get copyWith =>
      throw _privateConstructorUsedError;
}
