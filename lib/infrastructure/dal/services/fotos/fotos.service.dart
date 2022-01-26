import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/domain/core/exceptions/default.exception.dart';
import 'package:ekko/infrastructure/dal/services/data/fotos.data.dart';
import 'package:ekko/infrastructure/dal/services/fotos/dto/get_fotos.response.dart';

class FotosService {
  final IHttpConnect _connect;
  const FotosService(IHttpConnect connect) : _connect = connect;

  Future<List<FotosData>> getFotos({required int albumId}) async {
    final response = await _connect.get(
      'albums/$albumId/photos',
      decoder: (value) {
        var json = {'data': value};
        return GetFotosResponse.fromJson(json);
      },
    );
    if (response.success) {
      return response.payload!.data;
    } else {
      switch (response.statusCode) {
        default:
          throw DefaultException(message: 'Erro ao carregar albuns');
      }
    }
  }
}
