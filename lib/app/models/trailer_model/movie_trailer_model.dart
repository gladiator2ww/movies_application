import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_trailer_model.freezed.dart';
part 'movie_trailer_model.g.dart';

@freezed
class MovieTrailerModel with _$MovieTrailerModel {
  factory MovieTrailerModel({
    required String imDbId,
    required String title,
    required String fullTitle,
    required String year,
    required String type,
    required String videoId,
    required String videoUrl,
  }) = _MovieTrailerModel;

  factory MovieTrailerModel.fromJson(Map<String, dynamic> data) =>
      _$MovieTrailerModelFromJson(data);
}
