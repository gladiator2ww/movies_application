// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieModel _$$_MovieModelFromJson(Map<String, dynamic> json) =>
    _$_MovieModel(
      id: json['id'] as String,
      title: json['title'] as String,
      image: json['image'] as String,
      imDbRating: json['imDbRating'] as String,
      year: json['year'] as String,
    );

Map<String, dynamic> _$$_MovieModelToJson(_$_MovieModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'imDbRating': instance.imDbRating,
      'year': instance.year,
    };
