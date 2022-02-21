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
      directors: json['directors'] as String,
      countries: json['countries'] as String,
      runtimeStr: json['runtimeStr'] as String,
      imDbRatingVotes: json['imDbRatingVotes'] as String,
      genreList: (json['genreList'] as List<dynamic>)
          .map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      actorList: (json['actorList'] as List<dynamic>)
          .map((e) => ActorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      similars: (json['similars'] as List<dynamic>)
          .map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'directors': instance.directors,
      'countries': instance.countries,
      'runtimeStr': instance.runtimeStr,
      'imDbRatingVotes': instance.imDbRatingVotes,
      'genreList': instance.genreList,
      'actorList': instance.actorList,
      'similars': instance.similars,
    };
