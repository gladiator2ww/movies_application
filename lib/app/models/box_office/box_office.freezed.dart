// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'box_office.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BoxOffice _$BoxOfficeFromJson(Map<String, dynamic> json) {
  return _BoxOffice.fromJson(json);
}

/// @nodoc
class _$BoxOfficeTearOff {
  const _$BoxOfficeTearOff();

  _BoxOffice call(
      {required String id,
      required String title,
      required String image,
      required String weekend,
      required String gross,
      required String weeks}) {
    return _BoxOffice(
      id: id,
      title: title,
      image: image,
      weekend: weekend,
      gross: gross,
      weeks: weeks,
    );
  }

  BoxOffice fromJson(Map<String, Object?> json) {
    return BoxOffice.fromJson(json);
  }
}

/// @nodoc
const $BoxOffice = _$BoxOfficeTearOff();

/// @nodoc
mixin _$BoxOffice {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get weekend => throw _privateConstructorUsedError;
  String get gross => throw _privateConstructorUsedError;
  String get weeks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoxOfficeCopyWith<BoxOffice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoxOfficeCopyWith<$Res> {
  factory $BoxOfficeCopyWith(BoxOffice value, $Res Function(BoxOffice) then) =
      _$BoxOfficeCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String image,
      String weekend,
      String gross,
      String weeks});
}

/// @nodoc
class _$BoxOfficeCopyWithImpl<$Res> implements $BoxOfficeCopyWith<$Res> {
  _$BoxOfficeCopyWithImpl(this._value, this._then);

  final BoxOffice _value;
  // ignore: unused_field
  final $Res Function(BoxOffice) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? weekend = freezed,
    Object? gross = freezed,
    Object? weeks = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      weekend: weekend == freezed
          ? _value.weekend
          : weekend // ignore: cast_nullable_to_non_nullable
              as String,
      gross: gross == freezed
          ? _value.gross
          : gross // ignore: cast_nullable_to_non_nullable
              as String,
      weeks: weeks == freezed
          ? _value.weeks
          : weeks // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BoxOfficeCopyWith<$Res> implements $BoxOfficeCopyWith<$Res> {
  factory _$BoxOfficeCopyWith(
          _BoxOffice value, $Res Function(_BoxOffice) then) =
      __$BoxOfficeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String image,
      String weekend,
      String gross,
      String weeks});
}

/// @nodoc
class __$BoxOfficeCopyWithImpl<$Res> extends _$BoxOfficeCopyWithImpl<$Res>
    implements _$BoxOfficeCopyWith<$Res> {
  __$BoxOfficeCopyWithImpl(_BoxOffice _value, $Res Function(_BoxOffice) _then)
      : super(_value, (v) => _then(v as _BoxOffice));

  @override
  _BoxOffice get _value => super._value as _BoxOffice;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? weekend = freezed,
    Object? gross = freezed,
    Object? weeks = freezed,
  }) {
    return _then(_BoxOffice(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      weekend: weekend == freezed
          ? _value.weekend
          : weekend // ignore: cast_nullable_to_non_nullable
              as String,
      gross: gross == freezed
          ? _value.gross
          : gross // ignore: cast_nullable_to_non_nullable
              as String,
      weeks: weeks == freezed
          ? _value.weeks
          : weeks // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BoxOffice implements _BoxOffice {
  _$_BoxOffice(
      {required this.id,
      required this.title,
      required this.image,
      required this.weekend,
      required this.gross,
      required this.weeks});

  factory _$_BoxOffice.fromJson(Map<String, dynamic> json) =>
      _$$_BoxOfficeFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String image;
  @override
  final String weekend;
  @override
  final String gross;
  @override
  final String weeks;

  @override
  String toString() {
    return 'BoxOffice(id: $id, title: $title, image: $image, weekend: $weekend, gross: $gross, weeks: $weeks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BoxOffice &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.weekend, weekend) &&
            const DeepCollectionEquality().equals(other.gross, gross) &&
            const DeepCollectionEquality().equals(other.weeks, weeks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(weekend),
      const DeepCollectionEquality().hash(gross),
      const DeepCollectionEquality().hash(weeks));

  @JsonKey(ignore: true)
  @override
  _$BoxOfficeCopyWith<_BoxOffice> get copyWith =>
      __$BoxOfficeCopyWithImpl<_BoxOffice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BoxOfficeToJson(this);
  }
}

abstract class _BoxOffice implements BoxOffice {
  factory _BoxOffice(
      {required String id,
      required String title,
      required String image,
      required String weekend,
      required String gross,
      required String weeks}) = _$_BoxOffice;

  factory _BoxOffice.fromJson(Map<String, dynamic> json) =
      _$_BoxOffice.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get image;
  @override
  String get weekend;
  @override
  String get gross;
  @override
  String get weeks;
  @override
  @JsonKey(ignore: true)
  _$BoxOfficeCopyWith<_BoxOffice> get copyWith =>
      throw _privateConstructorUsedError;
}
