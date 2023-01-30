import 'package:freezed_annotation/freezed_annotation.dart';
part 'actor_filmography_model.freezed.dart';
part 'actor_filmography_model.g.dart';

@freezed
class ActorFilmographyModel with _$ActorFilmographyModel{
  factory ActorFilmographyModel({
    required String id,
    required String title,
    required String image,
    required String year,
  }) = _ActorMoviesModel;

    factory ActorFilmographyModel.fromJson(Map<String, dynamic> data) =>
      _$ActorFilmographyModelFromJson(data);
}