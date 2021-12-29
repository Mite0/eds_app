part of 'users_cubit.dart';

@freezed
class UsersState with _$UsersState {
  factory UsersState({
    required List<User> users,
  }) = _UsersState;

  factory UsersState.initState() => UsersState(
    users: [],
  );
}
