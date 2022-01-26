// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts.data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostsData _$PostsDataFromJson(Map<String, dynamic> json) => PostsData(
      body: json['body'] as String,
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
    );

Map<String, dynamic> _$PostsDataToJson(PostsData instance) => <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };
