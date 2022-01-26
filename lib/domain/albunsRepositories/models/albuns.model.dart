import 'package:ekko/infrastructure/dal/services/data/albuns.data.dart';

class AlbunsModel {
  final int userId, id;
  final String title;

  AlbunsModel({required this.userId, required this.id, required this.title});

  factory AlbunsModel.fromData(AlbunsData data) {
    return AlbunsModel(userId: data.userId, id: data.id, title: data.title);
  }
}