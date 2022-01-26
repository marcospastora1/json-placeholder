import 'package:ekko/infrastructure/dal/services/data/posts.data.dart';

class PostsModel {
  final int userId, id;
  final String title, body;

  PostsModel({required this.userId, required this.id, required this.title, required this.body});

  factory PostsModel.fromData(PostsData data) {
    return PostsModel(userId: data.userId, id: data.id, title: data.title, body: data.body);
  }
}