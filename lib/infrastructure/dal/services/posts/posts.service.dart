import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/domain/core/exceptions/default.exception.dart';
import 'package:ekko/infrastructure/dal/services/data/posts.data.dart';

import 'dto/get_placeholder.response.dart';

class PostsService {
  final IHttpConnect _connect;
  const PostsService(IHttpConnect connect) : _connect = connect;

  Future<List<PostsData>> getPosts({required int userId}) async {
    final response = await _connect.get(
      'users/$userId/posts',
      decoder: (value) {
        var json = {'data': value};
        return GetPostsResponse.fromJson(json);
      },
    );
    if (response.success) {
      return response.payload!.data;
    } else {
      switch (response.statusCode) {
        default:
          throw DefaultException(message: 'Erro ao carregar posts');
      }
    }
  }
}
