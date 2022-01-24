// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'actor_movies_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActorMoviesModel _$ActorMoviesModelFromJson(Map<String, dynamic> json) {
  return _ActorMoviesModel.fromJson(json);
}

/// @nodoc
class _$ActorMoviesModelTearOff {
  const _$ActorMoviesModelTearOff();

  _ActorMoviesModel call(
      {required String id,
      required String title,
      required String image,
      required String year}) {
    return _ActorMoviesModel(
      id: id,
      title: title,
      image: image,
      year: year,
    );
  }

  ActorMoviesModel fromJson(Map<String, Object?> json) {
    return ActorMoviesModel.fromJson(json);
  }
}

/// @nodoc
const $ActorMoviesModel = _$ActorMoviesModelTearOff();

/// @nodoc
mixin _$ActorMoviesModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get year => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActorMoviesModelCopyWith<ActorMoviesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActorMoviesModelCopyWith<$Res> {
  factory $ActorMoviesModelCopyWith(
          ActorMoviesModel value, $Res Function(ActorMoviesModel) then) =
      _$ActorMoviesModelCopyWithImpl<$Res>;
  $Res call({String id, String title, String image, String year});
}

/// @nodoc
class _$ActorMoviesModelCopyWithImpl<$Res>
    implements $ActorMoviesModelCopyWith<$Res> {
  _$ActorMoviesModelCopyWithImpl(this._value, this._then);

  final ActorMoviesModel _value;
  // ignore: unused_field
  final $Res Function(ActorMoviesModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? year = freezed,
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
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ActorMoviesModelCopyWith<$Res>
    implements $ActorMoviesModelCopyWith<$Res> {
  factory _$ActorMoviesModelCopyWith(
          _ActorMoviesModel value, $Res Function(_ActorMoviesModel) then) =
      __$ActorMoviesModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, String image, String year});
}

/// @nodoc
class __$ActorMoviesModelCopyWithImpl<$Res>
    extends _$ActorMoviesModelCopyWithImpl<$Res>
    implements _$ActorMoviesModelCopyWith<$Res> {
  __$ActorMoviesModelCopyWithImpl(
      _ActorMoviesModel _value, $Res Function(_ActorMoviesModel) _then)
      : super(_value, (v) => _then(v as _ActorMoviesModel));

  @override
  _ActorMoviesModel get _value => super._value as _ActorMoviesModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? year = freezed,
  }) {
    return _then(_ActorMoviesModel(
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
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActorMoviesModel implements _ActorMoviesModel {
  _$_ActorMoviesModel(
      {required this.id,
      required this.title,
      required this.image,
      required this.year});

  factory _$_ActorMoviesModel.fromJson(Map<String, dynamic> json) =>
      _$$_ActorMoviesModelFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String image;
  @override
  final String year;

  @override
  String toString() {
    return 'ActorMoviesModel(id: $id, title: $title, image: $image, year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActorMoviesModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.year, year));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(year));

  @JsonKey(ignore: true)
  @override
  _$ActorMoviesModelCopyWith<_ActorMoviesModel> get copyWith =>
      __$ActorMoviesModelCopyWithImpl<_ActorMoviesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActorMoviesModelToJson(this);
  }
}

abstract class _ActorMoviesModel implements ActorMoviesModel {
  factory _ActorMoviesModel(
      {required String id,
      required String title,
      required String image,
      required String year}) = _$_ActorMoviesModel;

  factory _ActorMoviesModel.fromJson(Map<String, dynamic> json) =
      _$_ActorMoviesModel.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get image;
  @override
  String get year;
  @override
  @JsonKey(ignore: true)
  _$ActorMoviesModelCopyWith<_ActorMoviesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
