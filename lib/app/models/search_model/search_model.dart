import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_model.freezed.dart';
part 'search_model.g.dart';

@freezed
class SearchModel with _$SearchModel {
  factory SearchModel({
    required String id,
    required String title,
    required String image,
required String description,


  }) = _SearchModel;

  factory SearchModel.fromJson(Map<String, dynamic> data) =>
      _$SearchModelFromJson(data);
}