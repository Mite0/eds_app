import 'package:eds_app/domain/models/album.dart';
import 'package:eds_app/domain/models/user.dart';
import 'package:eds_app/ui/pages/photo_viewer/photo_page.dart';
import 'package:eds_app/utils/AppNavigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'albums_cubit.dart';

class AlbumsPage extends StatelessWidget {
  //TODO
  final List<Album> albums;
  final User user;

  const AlbumsPage({required this.albums, required this.user});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AlbumsCubit(albums, user),
      child: _AlbumsForm(),
    );
  }
}

class _AlbumsForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AlbumsCubit>();
    return BlocBuilder<AlbumsCubit, AlbumsState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.amber,
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text("${state.user.username}' albums"),
          ),
          body: SafeArea(
            child: ListView.builder(
              itemCount: state.albums.length,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  tileColor: Colors.orangeAccent,
                  onTap: () {
                    AppNavigator.push(
                      context,
                      PhotoPage(
                        album: state.albums[index],
                      ),
                    );
                  },
                  title: Text(state.albums[index].title),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
