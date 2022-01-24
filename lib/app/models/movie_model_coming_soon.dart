import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_model_coming_soon.freezed.dart';
part 'movie_model_coming_soon.g.dart';

@freezed
class MovieModelComingSoon with _$MovieModelComingSoon {
  factory MovieModelComingSoon({
    required String id,
    required String title,
    required String image,
    required String runtimeStr,
    required String releaseState,
  }) = _MovieModelComingSoon;

  factory MovieModelComingSoon.fromJson(Map<String, dynamic> data) =>
      _$MovieModelComingSoonFromJson(data);
}
