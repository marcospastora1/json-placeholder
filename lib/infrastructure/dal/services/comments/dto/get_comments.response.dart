import 'package:ekko/infrastructure/dal/services/data/comments.data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_comments.response.g.dart';

@JsonSerializable()
class GetCommentsResponse {
  final List<CommentsData> data;

  GetCommentsResponse({
    required this.data
  });

  factory GetCommentsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetCommentsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetCommentsResponseToJson(this);
}
