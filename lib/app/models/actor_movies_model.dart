import 'package:freezed_annotation/freezed_annotation.dart';
part 'actor_movies_model.freezed.dart';
part 'actor_movies_model.g.dart';

@freezed
class ActorMoviesModel with _$ActorMoviesModel{
  factory ActorMoviesModel({
required String id,
    required String title,
    required String image,
    required String year,
  }) = _ActorMoviesModel;

    factory ActorMoviesModel.fromJson(Map<String, dynamic> data) =>
      _$ActorMoviesModelFromJson(data);
}