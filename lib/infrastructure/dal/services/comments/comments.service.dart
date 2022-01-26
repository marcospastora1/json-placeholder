import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/domain/core/exceptions/default.exception.dart';
import 'package:ekko/infrastructure/dal/services/data/comments.data.dart';

import 'dto/get_comments.response.dart';

class CommentssService {
  final IHttpConnect _connect;
  const CommentssService(IHttpConnect connect) : _connect = connect;

  Future<List<CommentsData>> getComments({required int postId}) async {
    final response = await _connect.get(
      'posts/$postId/comments',
      decoder: (value) {
        var json = {'data': value};
        return GetCommentsResponse.fromJson(json);
      },
    );
    if (response.success) {
      return response.payload!.data;
    } else {
      switch (response.statusCode) {
        default:
          throw DefaultException(message: 'Erro ao carregar albuns');
      }
    }
  }
}
