import 'package:freezed_annotation/freezed_annotation.dart';
part 'actor_model.freezed.dart';
part 'actor_model.g.dart';

@freezed
class ActorModel with _$ActorModel {
  factory ActorModel({
    required String id,
    required String name,
    required String image,
    required String asCharacter,
  }) = _ActorModel;

  factory ActorModel.fromJson(Map<String, dynamic> data) =>
      _$ActorModelFromJson(data);
}

















// class MovieModel {
//   final String id;
//   final String title;
//   final String image;
//   final String imDbRating;
//   final String year;

//   MovieModel({
//     required this.id,
//     required this.title,
//     required this.image,
//     required this.imDbRating,
//     required this.year,
//   });

//   factory MovieModel.fromJson(Map<String, dynamic> json) {
//     return MovieModel(
//       id: json['id'],
//       title: json['title'],
//       image: json['image'],
//       imDbRating: json['imDbRating'],
//       year: json['year'],
//     );
//   }
// }








 