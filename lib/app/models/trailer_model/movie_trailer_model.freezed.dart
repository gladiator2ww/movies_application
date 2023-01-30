// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_trailer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieTrailerModel _$MovieTrailerModelFromJson(Map<String, dynamic> json) {
  return _MovieTrailerModel.fromJson(json);
}

/// @nodoc
class _$MovieTrailerModelTearOff {
  const _$MovieTrailerModelTearOff();

  _MovieTrailerModel call(
      {required String imDbId,
      required String title,
      required String fullTitle,
      required String year,
      required String type,
      required String videoId,
      required String videoUrl}) {
    return _MovieTrailerModel(
      imDbId: imDbId,
      title: title,
      fullTitle: fullTitle,
      year: year,
      type: type,
      videoId: videoId,
      videoUrl: videoUrl,
    );
  }

  MovieTrailerModel fromJson(Map<String, Object?> json) {
    return MovieTrailerModel.fromJson(json);
  }
}

/// @nodoc
const $MovieTrailerModel = _$MovieTrailerModelTearOff();

/// @nodoc
mixin _$MovieTrailerModel {
  String get imDbId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get fullTitle => throw _privateConstructorUsedError;
  String get year => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get videoId => throw _privateConstructorUsedError;
  String get videoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieTrailerModelCopyWith<MovieTrailerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieTrailerModelCopyWith<$Res> {
  factory $MovieTrailerModelCopyWith(
          MovieTrailerModel value, $Res Function(MovieTrailerModel) then) =
      _$MovieTrailerModelCopyWithImpl<$Res>;
  $Res call(
      {String imDbId,
      String title,
      String fullTitle,
      String year,
      String type,
      String videoId,
      String videoUrl});
}

/// @nodoc
class _$MovieTrailerModelCopyWithImpl<$Res>
    implements $MovieTrailerModelCopyWith<$Res> {
  _$MovieTrailerModelCopyWithImpl(this._value, this._then);

  final MovieTrailerModel _value;
  // ignore: unused_field
  final $Res Function(MovieTrailerModel) _then;

  @override
  $Res call({
    Object? imDbId = freezed,
    Object? title = freezed,
    Object? fullTitle = freezed,
    Object? year = freezed,
    Object? type = freezed,
    Object? videoId = freezed,
    Object? videoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      imDbId: imDbId == freezed
          ? _value.imDbId
          : imDbId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      fullTitle: fullTitle == freezed
          ? _value.fullTitle
          : fullTitle // ignore: cast_nullable_to_non_nullable
              as String,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MovieTrailerModelCopyWith<$Res>
    implements $MovieTrailerModelCopyWith<$Res> {
  factory _$MovieTrailerModelCopyWith(
          _MovieTrailerModel value, $Res Function(_MovieTrailerModel) then) =
      __$MovieTrailerModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String imDbId,
      String title,
      String fullTitle,
      String year,
      String type,
      String videoId,
      String videoUrl});
}

/// @nodoc
class __$MovieTrailerModelCopyWithImpl<$Res>
    extends _$MovieTrailerModelCopyWithImpl<$Res>
    implements _$MovieTrailerModelCopyWith<$Res> {
  __$MovieTrailerModelCopyWithImpl(
      _MovieTrailerModel _value, $Res Function(_MovieTrailerModel) _then)
      : super(_value, (v) => _then(v as _MovieTrailerModel));

  @override
  _MovieTrailerModel get _value => super._value as _MovieTrailerModel;

  @override
  $Res call({
    Object? imDbId = freezed,
    Object? title = freezed,
    Object? fullTitle = freezed,
    Object? year = freezed,
    Object? type = freezed,
    Object? videoId = freezed,
    Object? videoUrl = freezed,
  }) {
    return _then(_MovieTrailerModel(
      imDbId: imDbId == freezed
          ? _value.imDbId
          : imDbId // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      fullTitle: fullTitle == freezed
          ? _value.fullTitle
          : fullTitle // ignore: cast_nullable_to_non_nullable
              as String,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      videoId: videoId == freezed
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieTrailerModel implements _MovieTrailerModel {
  _$_MovieTrailerModel(
      {required this.imDbId,
      required this.title,
      required this.fullTitle,
      required this.year,
      required this.type,
      required this.videoId,
      required this.videoUrl});

  factory _$_MovieTrailerModel.fromJson(Map<String, dynamic> json) =>
      _$$_MovieTrailerModelFromJson(json);

  @override
  final String imDbId;
  @override
  final String title;
  @override
  final String fullTitle;
  @override
  final String year;
  @override
  final String type;
  @override
  final String videoId;
  @override
  final String videoUrl;

  @override
  String toString() {
    return 'MovieTrailerModel(imDbId: $imDbId, title: $title, fullTitle: $fullTitle, year: $year, type: $type, videoId: $videoId, videoUrl: $videoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieTrailerModel &&
            const DeepCollectionEquality().equals(other.imDbId, imDbId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.fullTitle, fullTitle) &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.videoId, videoId) &&
            const DeepCollectionEquality().equals(other.videoUrl, videoUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imDbId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(fullTitle),
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(videoId),
      const DeepCollectionEquality().hash(videoUrl));

  @JsonKey(ignore: true)
  @override
  _$MovieTrailerModelCopyWith<_MovieTrailerModel> get copyWith =>
      __$MovieTrailerModelCopyWithImpl<_MovieTrailerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieTrailerModelToJson(this);
  }
}

abstract class _MovieTrailerModel implements MovieTrailerModel {
  factory _MovieTrailerModel(
      {required String imDbId,
      required String title,
      required String fullTitle,
      required String year,
      required String type,
      required String videoId,
      required String videoUrl}) = _$_MovieTrailerModel;

  factory _MovieTrailerModel.fromJson(Map<String, dynamic> json) =
      _$_MovieTrailerModel.fromJson;

  @override
  String get imDbId;
  @override
  String get title;
  @override
  String get fullTitle;
  @override
  String get year;
  @override
  String get type;
  @override
  String get videoId;
  @override
  String get videoUrl;
  @override
  @JsonKey(ignore: true)
  _$MovieTrailerModelCopyWith<_MovieTrailerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
