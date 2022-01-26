import 'package:ekko/infrastructure/dal/services/fotos/fotos.service.dart';
import 'models/comments.model.dart';

class FotosRepository {
  final FotosService _service;
  const FotosRepository({required FotosService service}) : _service = service;

  Future<List<FotosModel>> getFotos({required int albumId}) async {
    try {
      final response = await _service.getFotos(albumId: albumId);
      final models = response.map((e) => FotosModel.fromData(e)).toList();
      return models;
    } catch (err) {
      rethrow;
    }
  }
}
