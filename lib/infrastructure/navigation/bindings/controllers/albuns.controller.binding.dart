import 'package:ekko/infrastructure/navigation/bindings/domains/albuns.repository.bindings.dart';
import 'package:ekko/presentation/albuns/controllers/albuns.controller.dart';
import 'package:get/get.dart';

class AlbunsControllerBinding extends Bindings {
  @override
  void dependencies() {
    final albunsRepositoryBinding = AlbunsRepositoryBinding();
    Get.lazyPut<AlbunsController>(
      () => AlbunsController(albunsRepository: albunsRepositoryBinding.repository),
    );
  }
}