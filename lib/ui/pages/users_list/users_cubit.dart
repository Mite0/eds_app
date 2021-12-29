import 'package:eds_app/domain/models/user.dart';
import 'package:eds_app/domain/repository/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_cubit.freezed.dart';

part 'users_state.dart';

class UsersCubit extends Cubit<UsersState> {
  UsersCubit() : super(UsersState.initState());
  final usersRepository = UserRepository();

  void getUsers() {
    usersRepository
        .getUsers()
        .then((value) => {emit(state.copyWith(users: value))});
  }
}
