import 'package:eds_app/domain/models/album.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_view/photo_view_gallery.dart';

import 'photo_cubit.dart';

class PhotoPage extends StatelessWidget {
  //TODO
  final Album album;

  const PhotoPage({required this.album});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PhotoCubit(album),
      child: _PhotoForm(),
    );
  }
}

class _PhotoForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PhotoCubit>();
    cubit.getPhotos();
    return BlocBuilder<PhotoCubit, PhotoState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(' Album - ${state.album.title}'),
            ),
            backgroundColor: Colors.amber,
          ),
          backgroundColor: Colors.black87,
          body: SafeArea(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                PhotoViewGallery.builder(
                  itemCount: state.photos.length,
                  builder: (context, index) {
                    return PhotoViewGalleryPageOptions(
                      imageProvider: NetworkImage(state.photos[index].photoUrl),
                    );
                  },
                  onPageChanged: (index) => cubit.photoChanged(index),
                ),
                if (state.selectedId != -1)
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      state.photos[state.selectedId].title,
                      style: const TextStyle(color: Colors.amber),
                    ),
                  )
              ],
            ),
          ),
        );
      },
    );
  }
}
