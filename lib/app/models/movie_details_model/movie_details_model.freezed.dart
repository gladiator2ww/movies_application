// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDetailsModel _$MovieDetailsModelFromJson(Map<String, dynamic> json) {
  return _MovieDetailsModel.fromJson(json);
}

/// @nodoc
class _$MovieDetailsModelTearOff {
  const _$MovieDetailsModelTearOff();

  _MovieDetailsModel call(
      {required String id,
      required String title,
      required String image,
      required String? imDbRating,
      required String? year,
      required String plot,
      required String directors,
      required String countries,
      required String? runtimeStr,
      required String? imDbRatingVotes,
      required List<GenreModel> genreList,
      required List<ActorModel> actorList,
      required List<MovieModel> similars}) {
    return _MovieDetailsModel(
      id: id,
      title: title,
      image: image,
      imDbRating: imDbRating,
      year: year,
      plot: plot,
      directors: directors,
      countries: countries,
      runtimeStr: runtimeStr,
      imDbRatingVotes: imDbRatingVotes,
      genreList: genreList,
      actorList: actorList,
      similars: similars,
    );
  }

  MovieDetailsModel fromJson(Map<String, Object?> json) {
    return MovieDetailsModel.fromJson(json);
  }
}

/// @nodoc
const $MovieDetailsModel = _$MovieDetailsModelTearOff();

/// @nodoc
mixin _$MovieDetailsModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String? get imDbRating => throw _privateConstructorUsedError;
  String? get year => throw _privateConstructorUsedError;
  String get plot => throw _privateConstructorUsedError;
  String get directors => throw _privateConstructorUsedError;
  String get countries => throw _privateConstructorUsedError;
  String? get runtimeStr => throw _privateConstructorUsedError;
  String? get imDbRatingVotes => throw _privateConstructorUsedError;
  List<GenreModel> get genreList => throw _privateConstructorUsedError;
  List<ActorModel> get actorList => throw _privateConstructorUsedError;
  List<MovieModel> get similars => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailsModelCopyWith<MovieDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsModelCopyWith<$Res> {
  factory $MovieDetailsModelCopyWith(
          MovieDetailsModel value, $Res Function(MovieDetailsModel) then) =
      _$MovieDetailsModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String image,
      String? imDbRating,
      String? year,
      String plot,
      String directors,
      String countries,
      String? runtimeStr,
      String? imDbRatingVotes,
      List<GenreModel> genreList,
      List<ActorModel> actorList,
      List<MovieModel> similars});
}

/// @nodoc
class _$MovieDetailsModelCopyWithImpl<$Res>
    implements $MovieDetailsModelCopyWith<$Res> {
  _$MovieDetailsModelCopyWithImpl(this._value, this._then);

  final MovieDetailsModel _value;
  // ignore: unused_field
  final $Res Function(MovieDetailsModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? imDbRating = freezed,
    Object? year = freezed,
    Object? plot = freezed,
    Object? directors = freezed,
    Object? countries = freezed,
    Object? runtimeStr = freezed,
    Object? imDbRatingVotes = freezed,
    Object? genreList = freezed,
    Object? actorList = freezed,
    Object? similars = freezed,
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
      plot: plot == freezed
          ? _value.plot
          : plot // ignore: cast_nullable_to_non_nullable
              as String,
      directors: directors == freezed
          ? _value.directors
          : directors // ignore: cast_nullable_to_non_nullable
              as String,
      countries: countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as String,
      runtimeStr: runtimeStr == freezed
          ? _value.runtimeStr
          : runtimeStr // ignore: cast_nullable_to_non_nullable
              as String?,
      imDbRatingVotes: imDbRatingVotes == freezed
          ? _value.imDbRatingVotes
          : imDbRatingVotes // ignore: cast_nullable_to_non_nullable
              as String?,
      genreList: genreList == freezed
          ? _value.genreList
          : genreList // ignore: cast_nullable_to_non_nullable
              as List<GenreModel>,
      actorList: actorList == freezed
          ? _value.actorList
          : actorList // ignore: cast_nullable_to_non_nullable
              as List<ActorModel>,
      similars: similars == freezed
          ? _value.similars
          : similars // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
    ));
  }
}

/// @nodoc
abstract class _$MovieDetailsModelCopyWith<$Res>
    implements $MovieDetailsModelCopyWith<$Res> {
  factory _$MovieDetailsModelCopyWith(
          _MovieDetailsModel value, $Res Function(_MovieDetailsModel) then) =
      __$MovieDetailsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String image,
      String? imDbRating,
      String? year,
      String plot,
      String directors,
      String countries,
      String? runtimeStr,
      String? imDbRatingVotes,
      List<GenreModel> genreList,
      List<ActorModel> actorList,
      List<MovieModel> similars});
}

/// @nodoc
class __$MovieDetailsModelCopyWithImpl<$Res>
    extends _$MovieDetailsModelCopyWithImpl<$Res>
    implements _$MovieDetailsModelCopyWith<$Res> {
  __$MovieDetailsModelCopyWithImpl(
      _MovieDetailsModel _value, $Res Function(_MovieDetailsModel) _then)
      : super(_value, (v) => _then(v as _MovieDetailsModel));

  @override
  _MovieDetailsModel get _value => super._value as _MovieDetailsModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? imDbRating = freezed,
    Object? year = freezed,
    Object? plot = freezed,
    Object? directors = freezed,
    Object? countries = freezed,
    Object? runtimeStr = freezed,
    Object? imDbRatingVotes = freezed,
    Object? genreList = freezed,
    Object? actorList = freezed,
    Object? similars = freezed,
  }) {
    return _then(_MovieDetailsModel(
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
      plot: plot == freezed
          ? _value.plot
          : plot // ignore: cast_nullable_to_non_nullable
              as String,
      directors: directors == freezed
          ? _value.directors
          : directors // ignore: cast_nullable_to_non_nullable
              as String,
      countries: countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as String,
      runtimeStr: runtimeStr == freezed
          ? _value.runtimeStr
          : runtimeStr // ignore: cast_nullable_to_non_nullable
              as String?,
      imDbRatingVotes: imDbRatingVotes == freezed
          ? _value.imDbRatingVotes
          : imDbRatingVotes // ignore: cast_nullable_to_non_nullable
              as String?,
      genreList: genreList == freezed
          ? _value.genreList
          : genreList // ignore: cast_nullable_to_non_nullable
              as List<GenreModel>,
      actorList: actorList == freezed
          ? _value.actorList
          : actorList // ignore: cast_nullable_to_non_nullable
              as List<ActorModel>,
      similars: similars == freezed
          ? _value.similars
          : similars // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieDetailsModel implements _MovieDetailsModel {
  _$_MovieDetailsModel(
      {required this.id,
      required this.title,
      required this.image,
      required this.imDbRating,
      required this.year,
      required this.plot,
      required this.directors,
      required this.countries,
      required this.runtimeStr,
      required this.imDbRatingVotes,
      required this.genreList,
      required this.actorList,
      required this.similars});

  factory _$_MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_MovieDetailsModelFromJson(json);

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
  final String plot;
  @override
  final String directors;
  @override
  final String countries;
  @override
  final String? runtimeStr;
  @override
  final String? imDbRatingVotes;
  @override
  final List<GenreModel> genreList;
  @override
  final List<ActorModel> actorList;
  @override
  final List<MovieModel> similars;

  @override
  String toString() {
    return 'MovieDetailsModel(id: $id, title: $title, image: $image, imDbRating: $imDbRating, year: $year, plot: $plot, directors: $directors, countries: $countries, runtimeStr: $runtimeStr, imDbRatingVotes: $imDbRatingVotes, genreList: $genreList, actorList: $actorList, similars: $similars)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieDetailsModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.imDbRating, imDbRating) &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality().equals(other.plot, plot) &&
            const DeepCollectionEquality().equals(other.directors, directors) &&
            const DeepCollectionEquality().equals(other.countries, countries) &&
            const DeepCollectionEquality()
                .equals(other.runtimeStr, runtimeStr) &&
            const DeepCollectionEquality()
                .equals(other.imDbRatingVotes, imDbRatingVotes) &&
            const DeepCollectionEquality().equals(other.genreList, genreList) &&
            const DeepCollectionEquality().equals(other.actorList, actorList) &&
            const DeepCollectionEquality().equals(other.similars, similars));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(imDbRating),
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(plot),
      const DeepCollectionEquality().hash(directors),
      const DeepCollectionEquality().hash(countries),
      const DeepCollectionEquality().hash(runtimeStr),
      const DeepCollectionEquality().hash(imDbRatingVotes),
      const DeepCollectionEquality().hash(genreList),
      const DeepCollectionEquality().hash(actorList),
      const DeepCollectionEquality().hash(similars));

  @JsonKey(ignore: true)
  @override
  _$MovieDetailsModelCopyWith<_MovieDetailsModel> get copyWith =>
      __$MovieDetailsModelCopyWithImpl<_MovieDetailsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieDetailsModelToJson(this);
  }
}

abstract class _MovieDetailsModel implements MovieDetailsModel {
  factory _MovieDetailsModel(
      {required String id,
      required String title,
      required String image,
      required String? imDbRating,
      required String? year,
      required String plot,
      required String directors,
      required String countries,
      required String? runtimeStr,
      required String? imDbRatingVotes,
      required List<GenreModel> genreList,
      required List<ActorModel> actorList,
      required List<MovieModel> similars}) = _$_MovieDetailsModel;

  factory _MovieDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_MovieDetailsModel.fromJson;

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
  String get plot;
  @override
  String get directors;
  @override
  String get countries;
  @override
  String? get runtimeStr;
  @override
  String? get imDbRatingVotes;
  @override
  List<GenreModel> get genreList;
  @override
  List<ActorModel> get actorList;
  @override
  List<MovieModel> get similars;
  @override
  @JsonKey(ignore: true)
  _$MovieDetailsModelCopyWith<_MovieDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
