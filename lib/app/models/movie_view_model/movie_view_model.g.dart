// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieViewModel _$$_MovieViewModelFromJson(Map<String, dynamic> json) =>
    _$_MovieViewModel(
      id: json['id'] as String,
      title: json['title'] as String,
      image: json['image'] as String,
      imDbRating: json['imDbRating'] as String?,
      year: json['year'] as String?,
      isFavorite: json['isFavorite'] as bool,
    );

Map<String, dynamic> _$$_MovieViewModelToJson(_$_MovieViewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'imDbRating': instance.imDbRating,
      'year': instance.year,
      'isFavorite': instance.isFavorite,
    };
