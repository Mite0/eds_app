import 'package:eds_app/domain/models/album.dart';
import 'package:eds_app/domain/models/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'albums_cubit.freezed.dart';

part 'albums_state.dart';

class AlbumsCubit extends Cubit<AlbumsState> {
  AlbumsCubit(List<Album> albums, User user)
      : super(AlbumsState.initState(albums, user));
// final usersRepository = UserRepository();

}
