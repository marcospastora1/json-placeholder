import 'package:ekko/domain/albunsRepositories/albuns.respository.dart';
import 'package:ekko/domain/albunsRepositories/models/albuns.model.dart';
import 'package:get/get.dart';

class AlbunsController extends GetxController {
  late final arguments = Get.arguments;
  final AlbunsRepository _albunsRepository;
  AlbunsController({required albunsRepository})
      : _albunsRepository = albunsRepository;

  final albuns = <AlbunsModel>[].obs;
  final statusError = false.obs;
  final load = true.obs;
  final userId = 0.obs;

  @override
  void onReady() {
    loadAlbuns();
    ever(userId, (_) => loadAlbuns());
  }

  Future<void> loadAlbuns() async {
    try {
      final response = await _albunsRepository.getAlbuns(userId: userId.value = arguments['id']);
      albuns.assignAll(response);
    } catch (err) {
      statusError.value = false;
    }finally{
      load.value = false;
    }
  }
}
