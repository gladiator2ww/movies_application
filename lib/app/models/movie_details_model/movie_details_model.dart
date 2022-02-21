import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_application/app/models/actor_model/actor_model.dart';
import 'package:movies_application/app/models/genre_model/genre_model.dart';
import 'package:movies_application/app/models/movie_model/movie_model.dart';

part 'movie_details_model.freezed.dart';
part 'movie_details_model.g.dart';

@freezed
class MovieDetailsModel with _$MovieDetailsModel {
  factory MovieDetailsModel({
    required String id,
    required String title,
    required String image,
    required String imDbRating,
    required String year,
    required String plot,
    required String directors,
    required String countries,
    required String runtimeStr,
    required String imDbRatingVotes,
    required List<GenreModel> genreList,
    required List<ActorModel> actorList,
    required List<MovieModel> similars,
  }) = _MovieDetailsModel;

  factory MovieDetailsModel.fromJson(Map<String, dynamic> data) =>
      _$MovieDetailsModelFromJson(data);
}
