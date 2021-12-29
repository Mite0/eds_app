import 'package:eds_app/ui/pages/user_profile/user_profile_page.dart';
import 'package:eds_app/utils/AppNavigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'users_cubit.dart';

class UsersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UsersCubit(),
      child: _UsersForm(),
    );
  }
}

class _UsersForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<UsersCubit>();
    cubit.getUsers();
    return BlocBuilder<UsersCubit, UsersState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: ListView.builder(
              itemCount: state.users.length,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  onTap: () {
                    AppNavigator.push(
                      context,
                      UserProfilePage(
                        user: state.users[index],
                      ),
                    );
                  },
                  title: Center(
                    child: Text(state.users[index].username),
                  ),
                  subtitle: Center(
                    child: Text(state.users[index].name),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
