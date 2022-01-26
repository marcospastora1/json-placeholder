import 'package:ekko/domain/fotosRepositories/fotos.repository.dart';
import 'package:ekko/domain/fotosRepositories/models/comments.model.dart';
import 'package:get/get.dart';

class FotosController extends GetxController {
  final FotosRepository _fotosRepository;
  late final arguments = Get.arguments;
  FotosController({required fotosRepository})
      : _fotosRepository = fotosRepository;

  final fotos = <FotosModel>[].obs;
  final statusError = false.obs;
  final load = true.obs;

  @override
  void onReady() {
    loadFotos();
  }

  Future<void> loadFotos() async {
    try {
      final response =
          await _fotosRepository.getFotos(albumId: arguments['albumId']);
      fotos.assignAll(response);
    } catch (err) {
      statusError.value = false;
    } finally {
      load.value = false;
    }
  }
}
