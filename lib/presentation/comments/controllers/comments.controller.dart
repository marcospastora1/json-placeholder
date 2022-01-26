import 'package:ekko/domain/commentsRepositories/comments.respository.dart';
import 'package:ekko/domain/commentsRepositories/models/comments.model.dart';
import 'package:get/get.dart';

class CommentsController extends GetxController {
  final CommentsRepository _commentsRepository;
  late final arguments = Get.arguments;
  CommentsController({required commentsRepository})
      : _commentsRepository = commentsRepository;

  final comments = <CommentsModel>[].obs;
  final statusError = false.obs;
  final load = true.obs;

  @override
  void onReady() {
    loadComments();
  }

  Future<void> loadComments() async {
    try {
      final response = await _commentsRepository.getComments(postId: arguments['postId']);
      comments.assignAll(response);
    } catch (err) {
      statusError.value = false;
    } finally {
      load.value = false;
    }
  }
}
