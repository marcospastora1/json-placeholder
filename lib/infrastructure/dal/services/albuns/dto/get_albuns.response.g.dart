// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_albuns.response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAlbunsResponse _$GetAlbunsResponseFromJson(Map<String, dynamic> json) =>
    GetAlbunsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => AlbunsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAlbunsResponseToJson(GetAlbunsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
