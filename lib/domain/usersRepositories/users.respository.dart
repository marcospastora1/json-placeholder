import 'package:ekko/domain/usersRepositories/models/users.model.dart';
import 'package:ekko/infrastructure/dal/services/users/users.service.dart';

class UsersRepository {
  final UsersService _service;
  const UsersRepository({required UsersService service}) : _service = service;

  Future<List<UsersModel>> getUsers() async {
    try {
      final response = await _service.getUsers();
      final models = response.map((e) => UsersModel.fromData(e)).toList();
      return models;
    } catch (err) {
      rethrow;
    }
  }
}
