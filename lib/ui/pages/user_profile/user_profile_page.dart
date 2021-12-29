import 'package:eds_app/ui/pages/albums_list/albums_page.dart';
import 'package:eds_app/ui/pages/photo_viewer/photo_page.dart';
import 'package:eds_app/ui/pages/post_profile/post_profile_page.dart';
import 'package:eds_app/ui/pages/posts_list/posts_page.dart';
import 'package:eds_app/utils/AppNavigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/models/user.dart';
import 'user_profile_cubit.dart';

class UserProfilePage extends StatelessWidget {
  //TODO
  final User user;

  const UserProfilePage({required this.user});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserProfileCubit(user),
      child: _UserProfileForm(),
    );
  }
}

class _UserProfileForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<UserProfileCubit>();
    cubit.getPosts();
    cubit.getAlbums();
    return BlocBuilder<UserProfileCubit, UserProfileState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(state.user.username),
            ),
            backgroundColor: Colors.amber,
          ),
          backgroundColor: Colors.amber,
          body: SafeArea(
            child: ListView(
              children: [
                Container(
                  height: 200,
                  color: Colors.white24,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Text(state.user.name),
                      ),
                      Center(
                        child: Text(state.user.email),
                      ),
                      Center(
                        child: Text(state.user.phone),
                      ),
                      Center(
                        child: Text(state.user.website),
                      ),
                      const Center(
                        child: Text('Working'),
                      ),
                      Center(
                        child: Text(state.user.workName),
                      ),
                      Center(
                        child: Text(state.user.workArea),
                      ),
                      Center(
                        child: Text(
                          state.user.workCatchPhrase,
                          style: const TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      Center(
                        child: Text(state.user.address),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  color: Colors.white24,
                  height: 150,
                  child: (state.posts.isEmpty)
                      ? const Center(
                          child: Text('Постов нет'),
                        )
                      : Container(
                          color: Colors.white24,
                          height: 150,
                          child: ListView.builder(
                            itemCount: state.posts.length > 3
                                ? 4
                                : state.posts.length + 1,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              if (index == 3 ||
                                  index == state.posts.length + 1) {
                                return Card(
                                  child: SizedBox(
                                    width: 150,
                                    child: ListTile(
                                      onTap: () {
                                        AppNavigator.push(
                                          context,
                                          PostsPage(
                                            posts: state.posts,
                                            user: state.user,
                                          ),
                                        );
                                      },
                                      title: const Text('Больше постов'),
                                    ),
                                  ),
                                );
                              } else {
                                return Card(
                                  child: SizedBox(
                                    width: 150,
                                    child: ListTile(
                                      title: Text(state.posts[index].title),
                                      isThreeLine: true,
                                      subtitle: Text(
                                        state.posts[index].body,
                                        maxLines: 1,
                                      ),
                                      onTap: () {
                                        AppNavigator.push(
                                          context,
                                          PostProfilePage(
                                            post: state.posts[index],
                                            user: state.user,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                ),
                const SizedBox(height: 10),
                Container(
                  color: Colors.white24,
                  height: 200,
                  child: (state.albums.isEmpty)
                      ? const Center(
                          child: Text('Альбомов нет'),
                        )
                      : Container(
                          color: Colors.white24,
                          height: 150,
                          child: ListView.builder(
                            itemCount: state.albums.length > 3
                                ? 4
                                : state.albums.length + 1,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              if (index == 3 ||
                                  index == state.albums.length + 1) {
                                return Card(
                                  child: SizedBox(
                                    width: 150,
                                    child: ListTile(
                                      onTap: () {
                                        AppNavigator.push(
                                          context,
                                          AlbumsPage(
                                            albums: state.albums,
                                            user: state.user,
                                          ),
                                        );
                                      },
                                      title: const Center(
                                        child: Text('Больше альбомов'),
                                      ),
                                    ),
                                  ),
                                );
                              } else {
                                return GestureDetector(
                                  onTap: () {
                                    AppNavigator.push(
                                      context,
                                      PhotoPage(
                                        album: state.albums[index],
                                      ),
                                    );
                                  },
                                  child: Card(child:
                                    SizedBox( width: 200,
                                    child: Column(
                                      children: [
                                        Text(state.albums[index].title,maxLines: 2,),
                                        if (state.photos[index].smallPhotoUrl
                                            .isNotEmpty)
                                          Image.network(
                                            state.photos[index].smallPhotoUrl,
                                          ),
                                      ],
                                    ),),
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
