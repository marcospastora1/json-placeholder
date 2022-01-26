// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_placeholder.response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPostsResponse _$GetPostsResponseFromJson(Map<String, dynamic> json) =>
    GetPostsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => PostsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetPostsResponseToJson(GetPostsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
