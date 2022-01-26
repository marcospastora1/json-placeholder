import 'package:ekko/domain/commentsRepositories/comments.respository.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/infrastructure/dal/services/comments/comments.service.dart';
import 'package:get/get.dart';

class CommentsRepositoryBinding {
  late CommentsRepository _commentsRepository;
  CommentsRepository get repository => _commentsRepository;

  CommentsRepositoryBinding(){
    final getConnect = Get.find<IHttpConnect>();
    final commentsService = CommentssService(getConnect);
    _commentsRepository = CommentsRepository(service: commentsService);
  }
}