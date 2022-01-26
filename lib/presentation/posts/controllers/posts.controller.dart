import 'package:ekko/domain/postsRepositories/models/posts.model.dart';
import 'package:ekko/domain/postsRepositories/posts.respository.dart';
import 'package:get/get.dart';

class PostsController extends GetxController {
  late final arguments = Get.arguments;
  final PostsRepository _postsRepository;
  PostsController({required postsRepository})
      : _postsRepository = postsRepository;

  final posts = <PostsModel>[].obs;
  final statusError = false.obs;
  final load = true.obs;
  final userId = 0.obs;

  @override
  void onReady() {
    loadPosts();
    ever(userId, (_) => loadPosts());
  }

  Future<void> loadPosts() async {
    try {
      final response = await _postsRepository.getPosts(userId: userId.value = arguments['id']);
      posts.assignAll(response);
    } catch (err) {
      statusError.value = false;
    }finally{
      load.value = false;
    }
  }
}
