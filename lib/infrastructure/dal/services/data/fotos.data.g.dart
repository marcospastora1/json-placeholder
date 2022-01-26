// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fotos.data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FotosData _$FotosDataFromJson(Map<String, dynamic> json) => FotosData(
      albumId: json['albumId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );

Map<String, dynamic> _$FotosDataToJson(FotosData instance) => <String, dynamic>{
      'albumId': instance.albumId,
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
    };
