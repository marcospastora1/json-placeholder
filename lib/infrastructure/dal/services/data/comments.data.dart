import 'package:json_annotation/json_annotation.dart';

part 'comments.data.g.dart';

@JsonSerializable()
class CommentsData {
  final int postId, id;
  final String name, email, body;

  CommentsData({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  factory CommentsData.fromJson(Map<String, dynamic> json) =>
      _$CommentsDataFromJson(json);

  Map<String, dynamic> toJson() => _$CommentsDataToJson(this);
}
