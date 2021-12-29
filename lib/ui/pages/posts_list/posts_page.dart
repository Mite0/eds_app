import 'package:eds_app/domain/models/post.dart';
import 'package:eds_app/domain/models/user.dart';
import 'package:eds_app/ui/pages/post_profile/post_profile_page.dart';
import 'package:eds_app/utils/AppNavigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'posts_cubit.dart';

class PostsPage extends StatelessWidget {
  //TODO
  final List<Post> posts;
  final User user;

  const PostsPage({required this.posts, required this.user});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostsCubit(posts, user),
      child: _PostsForm(),
    );
  }
}

class _PostsForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PostsCubit>();
    return BlocBuilder<PostsCubit, PostsState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.amber,
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text("${state.user.username}' posts"),
          ),
          body: SafeArea(
            child: ListView.builder(
              itemCount: state.posts.length,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  tileColor: Colors.orangeAccent,
                  onTap: () {
                    AppNavigator.push(
                      context,
                      PostProfilePage(
                        user: state.user,
                        post: state.posts[index],
                      ),
                    );
                  },
                  title: Text(state.posts[index].title),
                  isThreeLine: true,
                  subtitle: Text(
                    state.posts[index].body,
                    // '${state.posts[index].body.substring(0, 20)}...',
                    maxLines: 1,
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
