import 'package:ekko/infrastructure/dal/services/data/albuns.data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_albuns.response.g.dart';

@JsonSerializable()
class GetAlbunsResponse {
  final List<AlbunsData> data;

  GetAlbunsResponse({
    required this.data
  });

  factory GetAlbunsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAlbunsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetAlbunsResponseToJson(this);
}
