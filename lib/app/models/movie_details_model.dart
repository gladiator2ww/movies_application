import 'package:freezed_annotation/freezed_annotation.dart';
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
    required String genres,
    required String directors,
    required String countries,
    required String runtimeStr,
    required String imDbRatingVotes,
  }) = _MovieDetailsModel;

  factory MovieDetailsModel.fromJson(Map<String, dynamic> data) =>
      _$MovieDetailsModelFromJson(data);
}
