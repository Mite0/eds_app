import 'package:eds_app/domain/models/post.dart';
import 'package:eds_app/domain/models/user.dart';
import 'package:eds_app/ui/widgets/edit_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'post_profile_cubit.dart';

class PostProfilePage extends StatelessWidget {
  //TODO
  final User user;
  final Post post;

  const PostProfilePage({required this.user, required this.post});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostProfileCubit(post, user),
      child: _PostProfileForm(),
    );
  }
}

class _PostProfileForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PostProfileCubit>();
    cubit.getComments();
    return BlocBuilder<PostProfileCubit, PostProfileState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text("${state.user.username}' post"),
            ),
            backgroundColor: Colors.amber,
          ),
          backgroundColor: Colors.amber,
          body: SafeArea(
            child: Container(
              color: Colors.white24,
              child: ListView.builder(
                itemCount: state.comments.length + 2,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Container(
                      color: Colors.white38,
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              state.post.title,
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                          Text(state.post.body),
                        ],
                      ),
                    );
                  } else if (index == state.comments.length + 1) {
                    return Card(
                      child: ListTile(
                        tileColor: Colors.orangeAccent,
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              content: Wrap(
                                children: [
                                  TextEdit(
                                    labelText: 'email',
                                    fieldSubmitted: (value) {
                                      cubit.updateEmail(value);
                                    },
                                  ),
                                  TextEdit(
                                    labelText: 'name',
                                    fieldSubmitted: (value) {
                                      cubit.updateName(value);
                                    },
                                  ),
                                  TextEdit(
                                    labelText: 'comment',
                                    fieldSubmitted: (value) {
                                      cubit.updateBody(value);
                                    },
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Отмена'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    cubit.sendComment();
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Отправить'),
                                ),
                              ],
                            ),
                          );
                        },
                        title: const Text('Добавить комментарий'),
                      ),
                    );
                  } else {
                    return Container(
                      color: Colors.white24,
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.only(top: 5),
                      child: Column(
                        children: [
                          Text(state.comments[index - 1].email),
                          Text(state.comments[index - 1].name),
                          Text(state.comments[index - 1].body),
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
