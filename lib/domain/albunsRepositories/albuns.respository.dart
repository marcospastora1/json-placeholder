import 'package:ekko/domain/albunsRepositories/models/albuns.model.dart';
import 'package:ekko/infrastructure/dal/services/albuns/albuns.service.dart';

class AlbunsRepository {
  final AlbunsService _service;
  const AlbunsRepository({required AlbunsService service}) : _service = service;

  Future<List<AlbunsModel>> getAlbuns({required int userId}) async {
    try {
      final response = await _service.getAlbuns(userId: userId);
      final models = response.map((e) => AlbunsModel.fromData(e)).toList();
      return models;
    } catch (err) {
      rethrow;
    }
  }
}
