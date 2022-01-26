import 'package:json_annotation/json_annotation.dart';

part 'posts.data.g.dart';

@JsonSerializable()
class PostsData {
  final int userId, id;
  final String title, body;

  PostsData({
    required this.body,
    required this.userId,
    required this.id,
    required this.title,
  });

  factory PostsData.fromJson(Map<String, dynamic> json) =>
      _$PostsDataFromJson(json);

  Map<String, dynamic> toJson() => _$PostsDataToJson(this);
}
