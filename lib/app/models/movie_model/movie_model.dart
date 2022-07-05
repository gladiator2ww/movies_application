import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies_application/app/models/saved_item_model/saved_item_model.dart';

import '../movie_view_model/movie_view_model.dart';
part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
class MovieModel with _$MovieModel {
  factory MovieModel({
    required String id,
    required String title,
    required String image,
    required String? imDbRating,
    required String? year,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> data) =>
      _$MovieModelFromJson(data);
}

extension MovieModelExtension on MovieModel {
  SavedItemModel toSavedItemModel() {
    return SavedItemModel(
      id: id,
      title: title,
      image: image,
    );
  }

  MovieViewModel toMovieViewModel() {
    return MovieViewModel(
      id: id,
      title: title,
      image: image,
      isFavorite: false,
      imDbRating: imDbRating,
      year: year,
    );
  }
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








 