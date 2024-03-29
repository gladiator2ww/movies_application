// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'short_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShortImageModel _$ShortImageModelFromJson(Map<String, dynamic> json) {
  return _ShortImageModel.fromJson(json);
}

/// @nodoc
class _$ShortImageModelTearOff {
  const _$ShortImageModelTearOff();

  _ShortImageModel call({required String image}) {
    return _ShortImageModel(
      image: image,
    );
  }

  ShortImageModel fromJson(Map<String, Object?> json) {
    return ShortImageModel.fromJson(json);
  }
}

/// @nodoc
const $ShortImageModel = _$ShortImageModelTearOff();

/// @nodoc
mixin _$ShortImageModel {
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShortImageModelCopyWith<ShortImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortImageModelCopyWith<$Res> {
  factory $ShortImageModelCopyWith(
          ShortImageModel value, $Res Function(ShortImageModel) then) =
      _$ShortImageModelCopyWithImpl<$Res>;
  $Res call({String image});
}

/// @nodoc
class _$ShortImageModelCopyWithImpl<$Res>
    implements $ShortImageModelCopyWith<$Res> {
  _$ShortImageModelCopyWithImpl(this._value, this._then);

  final ShortImageModel _value;
  // ignore: unused_field
  final $Res Function(ShortImageModel) _then;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ShortImageModelCopyWith<$Res>
    implements $ShortImageModelCopyWith<$Res> {
  factory _$ShortImageModelCopyWith(
          _ShortImageModel value, $Res Function(_ShortImageModel) then) =
      __$ShortImageModelCopyWithImpl<$Res>;
  @override
  $Res call({String image});
}

/// @nodoc
class __$ShortImageModelCopyWithImpl<$Res>
    extends _$ShortImageModelCopyWithImpl<$Res>
    implements _$ShortImageModelCopyWith<$Res> {
  __$ShortImageModelCopyWithImpl(
      _ShortImageModel _value, $Res Function(_ShortImageModel) _then)
      : super(_value, (v) => _then(v as _ShortImageModel));

  @override
  _ShortImageModel get _value => super._value as _ShortImageModel;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_ShortImageModel(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShortImageModel implements _ShortImageModel {
  _$_ShortImageModel({required this.image});

  factory _$_ShortImageModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShortImageModelFromJson(json);

  @override
  final String image;

  @override
  String toString() {
    return 'ShortImageModel(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShortImageModel &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$ShortImageModelCopyWith<_ShortImageModel> get copyWith =>
      __$ShortImageModelCopyWithImpl<_ShortImageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShortImageModelToJson(this);
  }
}

abstract class _ShortImageModel implements ShortImageModel {
  factory _ShortImageModel({required String image}) = _$_ShortImageModel;

  factory _ShortImageModel.fromJson(Map<String, dynamic> json) =
      _$_ShortImageModel.fromJson;

  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$ShortImageModelCopyWith<_ShortImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
