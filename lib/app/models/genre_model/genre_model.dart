import 'package:freezed_annotation/freezed_annotation.dart';
part 'genre_model.freezed.dart';
part 'genre_model.g.dart';

@freezed
class GenreModel with _$GenreModel {
  factory GenreModel({
    required String key,
    required String value,
  }) = _GenreModel;

  factory GenreModel.fromJson(Map<String, dynamic> data) =>
      _$GenreModelFromJson(data);
}
