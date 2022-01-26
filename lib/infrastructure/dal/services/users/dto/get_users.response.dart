import 'package:ekko/infrastructure/dal/services/data/user.data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_users.response.g.dart';

@JsonSerializable()
class GetUsersResponse {
  final List<UserData> data;

  GetUsersResponse({required this.data});

  factory GetUsersResponse.fromJson(Map<String, dynamic> json) =>
      _$GetUsersResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetUsersResponseToJson(this);
}
