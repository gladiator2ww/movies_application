// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieViewModel _$MovieViewModelFromJson(Map<String, dynamic> json) {
  return _MovieViewModel.fromJson(json);
}

/// @nodoc
class _$MovieViewModelTearOff {
  const _$MovieViewModelTearOff();

  _MovieViewModel call(
      {required String id,
      required String title,
      required String image,
      required String? imDbRating,
      required String? year,
      required bool isFavorite}) {
    return _MovieViewModel(
      id: id,
      title: title,
      image: image,
      imDbRating: imDbRating,
      year: year,
      isFavorite: isFavorite,
    );
  }

  MovieViewModel fromJson(Map<String, Object?> json) {
    return MovieViewModel.fromJson(json);
  }
}

/// @nodoc
const $MovieViewModel = _$MovieViewModelTearOff();

/// @nodoc
mixin _$MovieViewModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String? get imDbRating => throw _privateConstructorUsedError;
  String? get year => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieViewModelCopyWith<MovieViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieViewModelCopyWith<$Res> {
  factory $MovieViewModelCopyWith(
          MovieViewModel value, $Res Function(MovieViewModel) then) =
      _$MovieViewModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String image,
      String? imDbRating,
      String? year,
      bool isFavorite});
}

/// @nodoc
class _$MovieViewModelCopyWithImpl<$Res>
    implements $MovieViewModelCopyWith<$Res> {
  _$MovieViewModelCopyWithImpl(this._value, this._then);

  final MovieViewModel _value;
  // ignore: unused_field
  final $Res Function(MovieViewModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? imDbRating = freezed,
    Object? year = freezed,
    Object? isFavorite = freezed,
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
      imDbRating: imDbRating == freezed
          ? _value.imDbRating
          : imDbRating // ignore: cast_nullable_to_non_nullable
              as String?,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$MovieViewModelCopyWith<$Res>
    implements $MovieViewModelCopyWith<$Res> {
  factory _$MovieViewModelCopyWith(
          _MovieViewModel value, $Res Function(_MovieViewModel) then) =
      __$MovieViewModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String image,
      String? imDbRating,
      String? year,
      bool isFavorite});
}

/// @nodoc
class __$MovieViewModelCopyWithImpl<$Res>
    extends _$MovieViewModelCopyWithImpl<$Res>
    implements _$MovieViewModelCopyWith<$Res> {
  __$MovieViewModelCopyWithImpl(
      _MovieViewModel _value, $Res Function(_MovieViewModel) _then)
      : super(_value, (v) => _then(v as _MovieViewModel));

  @override
  _MovieViewModel get _value => super._value as _MovieViewModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? imDbRating = freezed,
    Object? year = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_MovieViewModel(
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
      imDbRating: imDbRating == freezed
          ? _value.imDbRating
          : imDbRating // ignore: cast_nullable_to_non_nullable
              as String?,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieViewModel implements _MovieViewModel {
  _$_MovieViewModel(
      {required this.id,
      required this.title,
      required this.image,
      required this.imDbRating,
      required this.year,
      required this.isFavorite});

  factory _$_MovieViewModel.fromJson(Map<String, dynamic> json) =>
      _$$_MovieViewModelFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String image;
  @override
  final String? imDbRating;
  @override
  final String? year;
  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'MovieViewModel(id: $id, title: $title, image: $image, imDbRating: $imDbRating, year: $year, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieViewModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.imDbRating, imDbRating) &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(imDbRating),
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(isFavorite));

  @JsonKey(ignore: true)
  @override
  _$MovieViewModelCopyWith<_MovieViewModel> get copyWith =>
      __$MovieViewModelCopyWithImpl<_MovieViewModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieViewModelToJson(this);
  }
}

abstract class _MovieViewModel implements MovieViewModel {
  factory _MovieViewModel(
      {required String id,
      required String title,
      required String image,
      required String? imDbRating,
      required String? year,
      required bool isFavorite}) = _$_MovieViewModel;

  factory _MovieViewModel.fromJson(Map<String, dynamic> json) =
      _$_MovieViewModel.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get image;
  @override
  String? get imDbRating;
  @override
  String? get year;
  @override
  bool get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$MovieViewModelCopyWith<_MovieViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
