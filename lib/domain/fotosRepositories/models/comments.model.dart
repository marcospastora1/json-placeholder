import 'package:ekko/infrastructure/dal/services/data/fotos.data.dart';

class FotosModel {
  final int albumId, id;
  final String title, url, thumbnailUrl;

  FotosModel({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory FotosModel.fromData(FotosData data) {
    return FotosModel(
      albumId: data.albumId,
      id: data.id,
      title: data.title,
      url: data.url,
      thumbnailUrl: data.thumbnailUrl,
    );
  }
}
