import 'package:ekko/infrastructure/navigation/bindings/domains/fotos.repository.bindings.dart';
import 'package:ekko/presentation/fotos/controllers/fotos.controller.dart';
import 'package:get/get.dart';

class FotosControllerBinding extends Bindings {
  @override
  void dependencies() {
    final fotosRepositoryBinding = FotosRepositoryBinding();
    Get.lazyPut<FotosController>(
      () => FotosController(fotosRepository: fotosRepositoryBinding.repository),
    );
  }
}
