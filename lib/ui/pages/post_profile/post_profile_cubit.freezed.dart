// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostProfileStateTearOff {
  const _$PostProfileStateTearOff();

  _PostProfileState call(
      {required Post post,
      required User user,
      required List<Comment> comments,
      required Comment newComment}) {
    return _PostProfileState(
      post: post,
      user: user,
      comments: comments,
      newComment: newComment,
    );
  }
}

/// @nodoc
const $PostProfileState = _$PostProfileStateTearOff();

/// @nodoc
mixin _$PostProfileState {
  Post get post => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  List<Comment> get comments => throw _privateConstructorUsedError;
  Comment get newComment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostProfileStateCopyWith<PostProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostProfileStateCopyWith<$Res> {
  factory $PostProfileStateCopyWith(
          PostProfileState value, $Res Function(PostProfileState) then) =
      _$PostProfileStateCopyWithImpl<$Res>;
  $Res call({Post post, User user, List<Comment> comments, Comment newComment});
}

/// @nodoc
class _$PostProfileStateCopyWithImpl<$Res>
    implements $PostProfileStateCopyWith<$Res> {
  _$PostProfileStateCopyWithImpl(this._value, this._then);

  final PostProfileState _value;
  // ignore: unused_field
  final $Res Function(PostProfileState) _then;

  @override
  $Res call({
    Object? post = freezed,
    Object? user = freezed,
    Object? comments = freezed,
    Object? newComment = freezed,
  }) {
    return _then(_value.copyWith(
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      newComment: newComment == freezed
          ? _value.newComment
          : newComment // ignore: cast_nullable_to_non_nullable
              as Comment,
    ));
  }
}

/// @nodoc
abstract class _$PostProfileStateCopyWith<$Res>
    implements $PostProfileStateCopyWith<$Res> {
  factory _$PostProfileStateCopyWith(
          _PostProfileState value, $Res Function(_PostProfileState) then) =
      __$PostProfileStateCopyWithImpl<$Res>;
  @override
  $Res call({Post post, User user, List<Comment> comments, Comment newComment});
}

/// @nodoc
class __$PostProfileStateCopyWithImpl<$Res>
    extends _$PostProfileStateCopyWithImpl<$Res>
    implements _$PostProfileStateCopyWith<$Res> {
  __$PostProfileStateCopyWithImpl(
      _PostProfileState _value, $Res Function(_PostProfileState) _then)
      : super(_value, (v) => _then(v as _PostProfileState));

  @override
  _PostProfileState get _value => super._value as _PostProfileState;

  @override
  $Res call({
    Object? post = freezed,
    Object? user = freezed,
    Object? comments = freezed,
    Object? newComment = freezed,
  }) {
    return _then(_PostProfileState(
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      newComment: newComment == freezed
          ? _value.newComment
          : newComment // ignore: cast_nullable_to_non_nullable
              as Comment,
    ));
  }
}

/// @nodoc

class _$_PostProfileState implements _PostProfileState {
  _$_PostProfileState(
      {required this.post,
      required this.user,
      required this.comments,
      required this.newComment});

  @override
  final Post post;
  @override
  final User user;
  @override
  final List<Comment> comments;
  @override
  final Comment newComment;

  @override
  String toString() {
    return 'PostProfileState(post: $post, user: $user, comments: $comments, newComment: $newComment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostProfileState &&
            const DeepCollectionEquality().equals(other.post, post) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.comments, comments) &&
            const DeepCollectionEquality()
                .equals(other.newComment, newComment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(post),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(comments),
      const DeepCollectionEquality().hash(newComment));

  @JsonKey(ignore: true)
  @override
  _$PostProfileStateCopyWith<_PostProfileState> get copyWith =>
      __$PostProfileStateCopyWithImpl<_PostProfileState>(this, _$identity);
}

abstract class _PostProfileState implements PostProfileState {
  factory _PostProfileState(
      {required Post post,
      required User user,
      required List<Comment> comments,
      required Comment newComment}) = _$_PostProfileState;

  @override
  Post get post;
  @override
  User get user;
  @override
  List<Comment> get comments;
  @override
  Comment get newComment;
  @override
  @JsonKey(ignore: true)
  _$PostProfileStateCopyWith<_PostProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
