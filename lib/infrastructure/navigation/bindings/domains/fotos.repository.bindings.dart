import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/domain/fotosRepositories/fotos.repository.dart';
import 'package:ekko/infrastructure/dal/services/fotos/fotos.service.dart';
import 'package:get/get.dart';

class FotosRepositoryBinding {
  late FotosRepository _fotosRepository;
  FotosRepository get repository => _fotosRepository;

  FotosRepositoryBinding(){
    final getConnect = Get.find<IHttpConnect>();
    final fotosService = FotosService(getConnect);
    _fotosRepository = FotosRepository(service: fotosService);
  }
}