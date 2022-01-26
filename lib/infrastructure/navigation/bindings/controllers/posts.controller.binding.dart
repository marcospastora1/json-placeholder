import 'package:ekko/infrastructure/navigation/bindings/domains/posts.repository.bindings.dart';
import 'package:ekko/presentation/posts/controllers/posts.controller.dart';
import 'package:get/get.dart';

class PostsControllerBinding extends Bindings {
  @override
  void dependencies() {
    final postsRepositoryBinding = PostsRepositoryBinding();
    Get.lazyPut<PostsController>(
      () => PostsController(postsRepository: postsRepositoryBinding.repository),
    );
  }
}
