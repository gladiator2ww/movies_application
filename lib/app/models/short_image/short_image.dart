
import 'package:freezed_annotation/freezed_annotation.dart';
part 'short_image.freezed.dart';
part 'short_image.g.dart';
@freezed
class ShortImageModel with _$ShortImageModel{
  factory ShortImageModel({
  required String image,
  
  }) = _ShortImageModel;

  factory ShortImageModel.fromJson(Map<String, dynamic> data) 
    => _$ShortImageModelFromJson(
      data
    );
  }

