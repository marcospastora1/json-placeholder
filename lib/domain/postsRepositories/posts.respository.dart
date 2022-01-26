
import 'package:ekko/domain/postsRepositories/models/posts.model.dart';
import 'package:ekko/infrastructure/dal/services/posts/posts.service.dart';

class PostsRepository {
  final PostsService _service;
  const PostsRepository({required PostsService service}) : _service = service;

  Future<List<PostsModel>> getPosts({required int userId}) async {
    try{
      final response = await _service.getPosts(userId: userId);
      final models = response.map((e) => PostsModel.fromData(e)).toList();
      return models;
    }catch(err){
      rethrow;
    }
  }
}