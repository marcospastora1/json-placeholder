import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/domain/postsRepositories/posts.respository.dart';
import 'package:ekko/infrastructure/dal/services/posts/posts.service.dart';
import 'package:get/get.dart';

class PostsRepositoryBinding {
  late PostsRepository _postsRepository;
  PostsRepository get repository => _postsRepository;

  PostsRepositoryBinding(){
    final getConnect = Get.find<IHttpConnect>();
    final postsService = PostsService(getConnect);
    _postsRepository = PostsRepository(service: postsService);
  }
}