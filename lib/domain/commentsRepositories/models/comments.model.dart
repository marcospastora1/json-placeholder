import 'package:ekko/infrastructure/dal/services/data/comments.data.dart';

class CommentsModel {
  final int postId, id;
  final String name, email, body;

  CommentsModel({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  factory CommentsModel.fromData(CommentsData data) {
    return CommentsModel(
      postId: data.postId,
      id: data.id,
      name: data.name,
      email: data.email,
      body: data.body,
    );
  }
}
