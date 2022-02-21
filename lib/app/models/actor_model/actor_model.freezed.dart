// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'actor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActorModel _$ActorModelFromJson(Map<String, dynamic> json) {
  return _ActorModel.fromJson(json);
}

/// @nodoc
class _$ActorModelTearOff {
  const _$ActorModelTearOff();

  _ActorModel call(
      {required String id,
      required String name,
      required String image,
      required String asCharacter}) {
    return _ActorModel(
      id: id,
      name: name,
      image: image,
      asCharacter: asCharacter,
    );
  }

  ActorModel fromJson(Map<String, Object?> json) {
    return ActorModel.fromJson(json);
  }
}

/// @nodoc
const $ActorModel = _$ActorModelTearOff();

/// @nodoc
mixin _$ActorModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get asCharacter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActorModelCopyWith<ActorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActorModelCopyWith<$Res> {
  factory $ActorModelCopyWith(
          ActorModel value, $Res Function(ActorModel) then) =
      _$ActorModelCopyWithImpl<$Res>;
  $Res call({String id, String name, String image, String asCharacter});
}

/// @nodoc
class _$ActorModelCopyWithImpl<$Res> implements $ActorModelCopyWith<$Res> {
  _$ActorModelCopyWithImpl(this._value, this._then);

  final ActorModel _value;
  // ignore: unused_field
  final $Res Function(ActorModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? asCharacter = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      asCharacter: asCharacter == freezed
          ? _value.asCharacter
          : asCharacter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ActorModelCopyWith<$Res> implements $ActorModelCopyWith<$Res> {
  factory _$ActorModelCopyWith(
          _ActorModel value, $Res Function(_ActorModel) then) =
      __$ActorModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String image, String asCharacter});
}

/// @nodoc
class __$ActorModelCopyWithImpl<$Res> extends _$ActorModelCopyWithImpl<$Res>
    implements _$ActorModelCopyWith<$Res> {
  __$ActorModelCopyWithImpl(
      _ActorModel _value, $Res Function(_ActorModel) _then)
      : super(_value, (v) => _then(v as _ActorModel));

  @override
  _ActorModel get _value => super._value as _ActorModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? asCharacter = freezed,
  }) {
    return _then(_ActorModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      asCharacter: asCharacter == freezed
          ? _value.asCharacter
          : asCharacter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActorModel implements _ActorModel {
  _$_ActorModel(
      {required this.id,
      required this.name,
      required this.image,
      required this.asCharacter});

  factory _$_ActorModel.fromJson(Map<String, dynamic> json) =>
      _$$_ActorModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String image;
  @override
  final String asCharacter;

  @override
  String toString() {
    return 'ActorModel(id: $id, name: $name, image: $image, asCharacter: $asCharacter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActorModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.asCharacter, asCharacter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(asCharacter));

  @JsonKey(ignore: true)
  @override
  _$ActorModelCopyWith<_ActorModel> get copyWith =>
      __$ActorModelCopyWithImpl<_ActorModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActorModelToJson(this);
  }
}

abstract class _ActorModel implements ActorModel {
  factory _ActorModel(
      {required String id,
      required String name,
      required String image,
      required String asCharacter}) = _$_ActorModel;

  factory _ActorModel.fromJson(Map<String, dynamic> json) =
      _$_ActorModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get image;
  @override
  String get asCharacter;
  @override
  @JsonKey(ignore: true)
  _$ActorModelCopyWith<_ActorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
