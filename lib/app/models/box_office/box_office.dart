import 'package:freezed_annotation/freezed_annotation.dart';
part 'box_office.freezed.dart';
part 'box_office.g.dart';

@freezed
class BoxOffice with _$BoxOffice {
  factory BoxOffice({
    required String id,
    required String title,
    required String image,
    required String weekend,
    required String gross,
        required String weeks,

  }) = _BoxOffice;

  factory BoxOffice.fromJson(Map<String, dynamic> data) =>
      _$BoxOfficeFromJson(data);
}
