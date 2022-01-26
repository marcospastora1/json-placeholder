import 'package:ekko/domain/commentsRepositories/models/comments.model.dart';
import 'package:ekko/infrastructure/dal/services/comments/comments.service.dart';

class CommentsRepository {
  final CommentssService _service;
  const CommentsRepository({required CommentssService service})
      : _service = service;

  Future<List<CommentsModel>> getComments({required int postId}) async {
    try {
      final response = await _service.getComments(postId: postId);
      final models = response.map((e) => CommentsModel.fromData(e)).toList();
      return models;
    } catch (err) {
      rethrow;
    }
  }
}
