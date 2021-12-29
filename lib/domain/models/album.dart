import '../../data_source/remote/model/album/album_response.dart';

class Album {
  final int id;
  final String title;

  Album({
    required this.id,
    required this.title,
  });

  Album.fromResponse(AlbumResponse response)
      : id = response.id,
        title = response.title;
}
