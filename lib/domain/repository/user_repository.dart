import 'package:eds_app/data_source/remote/network/network_service.dart';
import 'package:eds_app/domain/models/album.dart';
import 'package:eds_app/domain/models/comment.dart';
import 'package:eds_app/domain/models/photo.dart';
import 'package:eds_app/domain/models/post.dart';
import 'package:eds_app/domain/models/user.dart';
import 'package:eds_app/injection.dart';

class UserRepository {
  final _client = getIt<NetworkService>().client;

  Future<List<User>> getUsers() async {
    final response = await _client.getUsers();
    final users = List.generate(
      response.length,
      (index) => User.fromResponse(response[index]),
    );
    return users;
  }

  Future<List<Post>> getPosts(int userId) async {
    final response = await _client.getPosts(userId);
    final posts = List.generate(
      response.length,
      (index) => Post.fromResponse(response[index]),
    );
    return posts;
  }

  Future<List<Album>> getAlbums(int userId) async {
    final response = await _client.getAlbums(userId);
    final albums = List.generate(
      response.length,
      (index) => Album.fromResponse(response[index]),
    );
    return albums;
  }

  Future<List<Comment>> getComment(int postId) async {
    final response = await _client.getComments(postId);
    final comments = List.generate(
      response.length,
      (index) => Comment.fromResponse(response[index]),
    );
    return comments;
  }

  Future<List<Photo>> getPhotos(int albumId) async {
    final response = await _client.getPhotos(albumId);
    final photos = List.generate(
      response.length,
      (index) => Photo.fromResponse(response[index]),
    );
    return photos;
  }

  Future<Photo> getPhotoFromAlbum(int albumId) async {
    final response = await _client.getPhotos(albumId);
    final photo = Photo.fromResponse(response[0]);
    return photo;
  }

  Future<Comment> sendComment(Comment newComment, int postId) async {
    final response = await _client.sendComment(newComment.toRequest(postId));
    return Comment.fromResponse(response);
  }
}
