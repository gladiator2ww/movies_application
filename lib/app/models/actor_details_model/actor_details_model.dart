import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_application/app/models/actor_filmography_model/actor_filmography_model.dart';
part 'actor_details_model.freezed.dart';
part 'actor_details_model.g.dart';

@freezed
class ActorDetailsModel with _$ActorDetailsModel {
  factory ActorDetailsModel({
    required String id,
    required String name,
    required String image,
    required String role,
    required String summary,
    required String height,
    required String birthDate,
    required String awards,
    required List<ActorFilmographyModel> actorMovies,
  }) = _ActorDetailsModel;

  factory ActorDetailsModel.fromJson(Map<String, dynamic> data) =>
      _$ActorDetailsModelFromJson(data);
}
