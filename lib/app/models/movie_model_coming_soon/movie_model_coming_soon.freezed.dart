// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_model_coming_soon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieModelComingSoon _$MovieModelComingSoonFromJson(Map<String, dynamic> json) {
  return _MovieModelComingSoon.fromJson(json);
}

/// @nodoc
class _$MovieModelComingSoonTearOff {
  const _$MovieModelComingSoonTearOff();

  _MovieModelComingSoon call(
      {required String id,
      required String title,
      required String image,
      required String runtimeStr,
      required String releaseState}) {
    return _MovieModelComingSoon(
      id: id,
      title: title,
      image: image,
      runtimeStr: runtimeStr,
      releaseState: releaseState,
    );
  }

  MovieModelComingSoon fromJson(Map<String, Object?> json) {
    return MovieModelComingSoon.fromJson(json);
  }
}

/// @nodoc
const $MovieModelComingSoon = _$MovieModelComingSoonTearOff();

/// @nodoc
mixin _$MovieModelComingSoon {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get runtimeStr => throw _privateConstructorUsedError;
  String get releaseState => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieModelComingSoonCopyWith<MovieModelComingSoon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelComingSoonCopyWith<$Res> {
  factory $MovieModelComingSoonCopyWith(MovieModelComingSoon value,
          $Res Function(MovieModelComingSoon) then) =
      _$MovieModelComingSoonCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String image,
      String runtimeStr,
      String releaseState});
}

/// @nodoc
class _$MovieModelComingSoonCopyWithImpl<$Res>
    implements $MovieModelComingSoonCopyWith<$Res> {
  _$MovieModelComingSoonCopyWithImpl(this._value, this._then);

  final MovieModelComingSoon _value;
  // ignore: unused_field
  final $Res Function(MovieModelComingSoon) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? runtimeStr = freezed,
    Object? releaseState = freezed,
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
      runtimeStr: runtimeStr == freezed
          ? _value.runtimeStr
          : runtimeStr // ignore: cast_nullable_to_non_nullable
              as String,
      releaseState: releaseState == freezed
          ? _value.releaseState
          : releaseState // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MovieModelComingSoonCopyWith<$Res>
    implements $MovieModelComingSoonCopyWith<$Res> {
  factory _$MovieModelComingSoonCopyWith(_MovieModelComingSoon value,
          $Res Function(_MovieModelComingSoon) then) =
      __$MovieModelComingSoonCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String image,
      String runtimeStr,
      String releaseState});
}

/// @nodoc
class __$MovieModelComingSoonCopyWithImpl<$Res>
    extends _$MovieModelComingSoonCopyWithImpl<$Res>
    implements _$MovieModelComingSoonCopyWith<$Res> {
  __$MovieModelComingSoonCopyWithImpl(
      _MovieModelComingSoon _value, $Res Function(_MovieModelComingSoon) _then)
      : super(_value, (v) => _then(v as _MovieModelComingSoon));

  @override
  _MovieModelComingSoon get _value => super._value as _MovieModelComingSoon;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? runtimeStr = freezed,
    Object? releaseState = freezed,
  }) {
    return _then(_MovieModelComingSoon(
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
      runtimeStr: runtimeStr == freezed
          ? _value.runtimeStr
          : runtimeStr // ignore: cast_nullable_to_non_nullable
              as String,
      releaseState: releaseState == freezed
          ? _value.releaseState
          : releaseState // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieModelComingSoon implements _MovieModelComingSoon {
  _$_MovieModelComingSoon(
      {required this.id,
      required this.title,
      required this.image,
      required this.runtimeStr,
      required this.releaseState});

  factory _$_MovieModelComingSoon.fromJson(Map<String, dynamic> json) =>
      _$$_MovieModelComingSoonFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String image;
  @override
  final String runtimeStr;
  @override
  final String releaseState;

  @override
  String toString() {
    return 'MovieModelComingSoon(id: $id, title: $title, image: $image, runtimeStr: $runtimeStr, releaseState: $releaseState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieModelComingSoon &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.runtimeStr, runtimeStr) &&
            const DeepCollectionEquality()
                .equals(other.releaseState, releaseState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(runtimeStr),
      const DeepCollectionEquality().hash(releaseState));

  @JsonKey(ignore: true)
  @override
  _$MovieModelComingSoonCopyWith<_MovieModelComingSoon> get copyWith =>
      __$MovieModelComingSoonCopyWithImpl<_MovieModelComingSoon>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieModelComingSoonToJson(this);
  }
}

abstract class _MovieModelComingSoon implements MovieModelComingSoon {
  factory _MovieModelComingSoon(
      {required String id,
      required String title,
      required String image,
      required String runtimeStr,
      required String releaseState}) = _$_MovieModelComingSoon;

  factory _MovieModelComingSoon.fromJson(Map<String, dynamic> json) =
      _$_MovieModelComingSoon.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get image;
  @override
  String get runtimeStr;
  @override
  String get releaseState;
  @override
  @JsonKey(ignore: true)
  _$MovieModelComingSoonCopyWith<_MovieModelComingSoon> get copyWith =>
      throw _privateConstructorUsedError;
}
