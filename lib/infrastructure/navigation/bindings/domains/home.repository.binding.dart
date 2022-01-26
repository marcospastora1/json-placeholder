import 'package:ekko/domain/core/abstractions/infrastructure/http_connect.interface.dart';
import 'package:ekko/domain/usersRepositories/users.respository.dart';
import 'package:ekko/infrastructure/dal/services/users/users.service.dart';
import 'package:get/get.dart';

class HomeRepositoryBinding {
  late UsersRepository _usersRepository;
  UsersRepository get repository => _usersRepository;

  HomeRepositoryBinding(){
    final getConnect = Get.find<IHttpConnect>();
    final usersService = UsersService(getConnect);
    _usersRepository = UsersRepository(service: usersService);
  }
}