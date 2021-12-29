import 'package:dio/dio.dart';
import 'package:eds_app/data_source/remote/model/album/album_response.dart';
import 'package:eds_app/data_source/remote/model/comment/comment_response.dart';
import 'package:eds_app/data_source/remote/model/photo/photo_response.dart';
import 'package:eds_app/data_source/remote/model/post/post_response.dart';
import 'package:retrofit/retrofit.dart';

import '../model/user/user_response.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com')
abstract class AppApi {
  factory AppApi(Dio dio, {String baseUrl}) = _AppApi;

  @GET('/users')
  Future<List<UserResponse>> getUsers();

  @GET('/posts?userId={userId}')
  Future<List<PostResponse>> getPosts(@Path() int userId);

  @GET('/albums?userId={userId}')
  Future<List<AlbumResponse>> getAlbums(@Path() int userId);

  @GET('/comments?postId={postId}')
  Future<List<CommentResponse>> getComments(@Path() int postId);

  @GET('/photos?albumId={albumId}')
  Future<List<PhotoResponse>> getPhotos(@Path() int albumId);

  @POST('/comments')
  Future<CommentResponse> sendComment(@Body() CommentResponse commentResponse);

}
