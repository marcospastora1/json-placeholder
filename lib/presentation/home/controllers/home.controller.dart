import 'package:ekko/domain/usersRepositories/models/users.model.dart';
import 'package:ekko/domain/usersRepositories/users.respository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final UsersRepository _usersRepository;
  HomeController({required usersRepository})
      : _usersRepository = usersRepository;

  final users = <UsersModel>[].obs;
  final statusError = false.obs;
  final load = true.obs;
  final userId = 0.obs;

  @override
  void onReady() {
    loadUsers();
  }

  void click() {
    userId.value = users[3].id;
  }

  Future<void> loadUsers() async {
    try {
      final response = await _usersRepository.getUsers();
      users.assignAll(response);
    } catch (err) {
      statusError.value = false;
    } finally {
      load.value = false;
    }
  }
}
