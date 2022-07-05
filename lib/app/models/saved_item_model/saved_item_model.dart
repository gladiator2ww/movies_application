import 'package:freezed_annotation/freezed_annotation.dart';
part 'saved_item_model.freezed.dart';
part 'saved_item_model.g.dart';

@freezed
class SavedItemModel with _$SavedItemModel {
  factory SavedItemModel({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'titleId') required String id,
    required String title,
    required String image,
  }) = _SavedItemModel;

  factory SavedItemModel.fromJson(Map<String, dynamic> data) =>
      _$SavedItemModelFromJson(data);
}
