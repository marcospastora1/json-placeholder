import 'package:ekko/infrastructure/dal/services/data/posts.data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_placeholder.response.g.dart';

@JsonSerializable()
class GetPostsResponse {
  final List<PostsData> data;

  GetPostsResponse({
    required this.data
  });

  factory GetPostsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetPostsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetPostsResponseToJson(this);
}
