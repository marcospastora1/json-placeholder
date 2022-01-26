// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_comments.response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCommentsResponse _$GetCommentsResponseFromJson(Map<String, dynamic> json) =>
    GetCommentsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => CommentsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetCommentsResponseToJson(
        GetCommentsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
