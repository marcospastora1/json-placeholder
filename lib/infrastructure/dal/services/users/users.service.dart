import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/domain/core/exceptions/default.exception.dart';
import 'package:ekko/infrastructure/dal/services/data/user.data.dart';
import 'package:ekko/infrastructure/dal/services/users/dto/get_users.response.dart';

class UsersService {
  final IHttpConnect _connect;
  const UsersService(IHttpConnect connect) : _connect = connect;

  Future<List<UserData>> getUsers() async {
    final response = await _connect.get(
      'users',
      decoder: (value) {
        var json = {'data': value};
        return GetUsersResponse.fromJson(json);
      },
    );
    if (response.success) {
      return response.payload!.data;
    } else {
      switch (response.statusCode) {
        default:
          throw DefaultException(message: 'Erro ao carregar posts');
      }
    }
  }
}
