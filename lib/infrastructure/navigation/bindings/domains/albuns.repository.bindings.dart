import 'package:ekko/domain/albunsRepositories/albuns.respository.dart';
import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/infrastructure/dal/services/albuns/albuns.service.dart';
import 'package:get/get.dart';

class AlbunsRepositoryBinding {
  late AlbunsRepository _albunsRepository;
  AlbunsRepository get repository => _albunsRepository;

  AlbunsRepositoryBinding(){
    final getConnect = Get.find<IHttpConnect>();
    final albunsService = AlbunsService(getConnect);
    _albunsRepository = AlbunsRepository(service: albunsService);
  }
}