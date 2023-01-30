// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_trailer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieTrailerModel _$$_MovieTrailerModelFromJson(Map<String, dynamic> json) =>
    _$_MovieTrailerModel(
      imDbId: json['imDbId'] as String,
      title: json['title'] as String,
      fullTitle: json['fullTitle'] as String,
      year: json['year'] as String,
      type: json['type'] as String,
      videoId: json['videoId'] as String,
      videoUrl: json['videoUrl'] as String,
    );

Map<String, dynamic> _$$_MovieTrailerModelToJson(
        _$_MovieTrailerModel instance) =>
    <String, dynamic>{
      'imDbId': instance.imDbId,
      'title': instance.title,
      'fullTitle': instance.fullTitle,
      'year': instance.year,
      'type': instance.type,
      'videoId': instance.videoId,
      'videoUrl': instance.videoUrl,
    };
