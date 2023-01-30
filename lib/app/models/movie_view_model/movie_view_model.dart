import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_application/app/models/saved_item_model/saved_item_model.dart';
part 'movie_view_model.freezed.dart';
part 'movie_view_model.g.dart';

@freezed
class MovieViewModel with _$MovieViewModel {
  factory MovieViewModel({
    required String id,
    required String title,
    required String image,
    required String? imDbRating,
    required String? year,
    required bool isFavorite,
  }) = _MovieViewModel;

  factory MovieViewModel.fromJson(Map<String, dynamic> data) =>
      _$MovieViewModelFromJson(data);
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








 