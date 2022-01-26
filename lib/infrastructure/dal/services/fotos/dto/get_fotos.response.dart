import 'package:ekko/infrastructure/dal/services/data/fotos.data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_fotos.response.g.dart';

@JsonSerializable()
class GetFotosResponse {
  final List<FotosData> data;

  GetFotosResponse({
    required this.data
  });

  factory GetFotosResponse.fromJson(Map<String, dynamic> json) =>
      _$GetFotosResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetFotosResponseToJson(this);
}
