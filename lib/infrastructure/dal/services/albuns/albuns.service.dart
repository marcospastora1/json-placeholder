import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/domain/core/exceptions/default.exception.dart';
import 'package:ekko/infrastructure/dal/services/data/albuns.data.dart';

import 'dto/get_albuns.response.dart';

class AlbunsService {
  final IHttpConnect _connect;
  const AlbunsService(IHttpConnect connect) : _connect = connect;

  Future<List<AlbunsData>> getAlbuns({required int userId}) async {
    final response = await _connect.get(
      'users/$userId/albums',
      decoder: (value) {
        var json = {'data': value};
        return GetAlbunsResponse.fromJson(json);
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
