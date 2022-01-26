import 'package:ekko/infrastructure/navigation/bindings/domains/comments.repository.bindings.dart';
import 'package:ekko/presentation/comments/controllers/comments.controller.dart';
import 'package:get/get.dart';

class CommentsControllerBinding extends Bindings {
  @override
  void dependencies() {
    final commentsRepositoryBinding = CommentsRepositoryBinding();
    Get.lazyPut<CommentsController>(
      () => CommentsController(commentsRepository: commentsRepositoryBinding.repository),
    );
  }
}
