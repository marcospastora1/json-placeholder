// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_fotos.response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetFotosResponse _$GetFotosResponseFromJson(Map<String, dynamic> json) =>
    GetFotosResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => FotosData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetFotosResponseToJson(GetFotosResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
