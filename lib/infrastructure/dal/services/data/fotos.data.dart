import 'package:json_annotation/json_annotation.dart';

part 'fotos.data.g.dart';

@JsonSerializable()
class FotosData {
  final int albumId, id;
  final String title, url, thumbnailUrl;

  FotosData({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory FotosData.fromJson(Map<String, dynamic> json) =>
      _$FotosDataFromJson(json);

  Map<String, dynamic> toJson() => _$FotosDataToJson(this);
}
