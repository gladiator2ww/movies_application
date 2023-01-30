// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'saved_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SavedItemModel _$SavedItemModelFromJson(Map<String, dynamic> json) {
  return _SavedItemModel.fromJson(json);
}

/// @nodoc
class _$SavedItemModelTearOff {
  const _$SavedItemModelTearOff();

  _SavedItemModel call(
      {@JsonKey(name: 'titleId') required String id,
      required String title,
      required String image}) {
    return _SavedItemModel(
      id: id,
      title: title,
      image: image,
    );
  }

  SavedItemModel fromJson(Map<String, Object?> json) {
    return SavedItemModel.fromJson(json);
  }
}

/// @nodoc
const $SavedItemModel = _$SavedItemModelTearOff();

/// @nodoc
mixin _$SavedItemModel {
  @JsonKey(name: 'titleId')
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavedItemModelCopyWith<SavedItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedItemModelCopyWith<$Res> {
  factory $SavedItemModelCopyWith(
          SavedItemModel value, $Res Function(SavedItemModel) then) =
      _$SavedItemModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'titleId') String id, String title, String image});
}

/// @nodoc
class _$SavedItemModelCopyWithImpl<$Res>
    implements $SavedItemModelCopyWith<$Res> {
  _$SavedItemModelCopyWithImpl(this._value, this._then);

  final SavedItemModel _value;
  // ignore: unused_field
  final $Res Function(SavedItemModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$SavedItemModelCopyWith<$Res>
    implements $SavedItemModelCopyWith<$Res> {
  factory _$SavedItemModelCopyWith(
          _SavedItemModel value, $Res Function(_SavedItemModel) then) =
      __$SavedItemModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'titleId') String id, String title, String image});
}

/// @nodoc
class __$SavedItemModelCopyWithImpl<$Res>
    extends _$SavedItemModelCopyWithImpl<$Res>
    implements _$SavedItemModelCopyWith<$Res> {
  __$SavedItemModelCopyWithImpl(
      _SavedItemModel _value, $Res Function(_SavedItemModel) _then)
      : super(_value, (v) => _then(v as _SavedItemModel));

  @override
  _SavedItemModel get _value => super._value as _SavedItemModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
  }) {
    return _then(_SavedItemModel(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SavedItemModel implements _SavedItemModel {
  _$_SavedItemModel(
      {@JsonKey(name: 'titleId') required this.id,
      required this.title,
      required this.image});

  factory _$_SavedItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_SavedItemModelFromJson(json);

  @override
  @JsonKey(name: 'titleId')
  final String id;
  @override
  final String title;
  @override
  final String image;

  @override
  String toString() {
    return 'SavedItemModel(id: $id, title: $title, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SavedItemModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$SavedItemModelCopyWith<_SavedItemModel> get copyWith =>
      __$SavedItemModelCopyWithImpl<_SavedItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SavedItemModelToJson(this);
  }
}

abstract class _SavedItemModel implements SavedItemModel {
  factory _SavedItemModel(
      {@JsonKey(name: 'titleId') required String id,
      required String title,
      required String image}) = _$_SavedItemModel;

  factory _SavedItemModel.fromJson(Map<String, dynamic> json) =
      _$_SavedItemModel.fromJson;

  @override
  @JsonKey(name: 'titleId')
  String get id;
  @override
  String get title;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$SavedItemModelCopyWith<_SavedItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
