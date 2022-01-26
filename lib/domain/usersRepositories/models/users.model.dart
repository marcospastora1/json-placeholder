import 'package:ekko/infrastructure/dal/services/data/user.data.dart';

class UsersModel {
  final int id;
  final String name, email;

  UsersModel({required this.id, required this.name, required this.email});

  factory UsersModel.fromData(UserData data) {
    return UsersModel(id: data.id, name: data.name, email: data.email);
  }
}
