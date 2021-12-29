import 'package:eds_app/data_source/remote/model/photo/photo_response.dart';

class Photo {
  final String title;
  final String photoUrl;
  final String smallPhotoUrl;

  Photo({
    this.title = '',
    this.photoUrl = '',
    this.smallPhotoUrl = '',
  });

  Photo.fromResponse(PhotoResponse response)
      : title = response.title,
        smallPhotoUrl = response.smallPhotoUrl,
        photoUrl = response.photoUrl;
}
