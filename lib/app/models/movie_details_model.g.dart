// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDetailsModel _$$_MovieDetailsModelFromJson(Map<String, dynamic> json) =>
    _$_MovieDetailsModel(
      id: json['id'] as String,
      title: json['title'] as String,
      image: json['image'] as String,
      imDbRating: json['imDbRating'] as String,
      year: json['year'] as String,
      plot: json['plot'] as String,
      genres: json['genres'] as String,
      directors: json['directors'] as String,
      countries: json['countries'] as String,
      runtimeStr: json['runtimeStr'] as String,
      imDbRatingVotes: json['imDbRatingVotes'] as String,
    );

Map<String, dynamic> _$$_MovieDetailsModelToJson(
        _$_MovieDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'imDbRating': instance.imDbRating,
      'year': instance.year,
      'plot': instance.plot,
      'genres': instance.genres,
      'directors': instance.directors,
      'countries': instance.countries,
      'runtimeStr': instance.runtimeStr,
      'imDbRatingVotes': instance.imDbRatingVotes,
    };
