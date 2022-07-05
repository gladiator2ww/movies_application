import 'package:movies_application/app/models/filter_model.dart';
import 'package:movies_application/app/models/movie_model/movie_model.dart';
import 'package:movies_application/app/models/sorting.dart';

class FilterManager {
  static List<MovieModel> getFilteredMovies({
    required FilterModel filterModel,
    required List<MovieModel> movies,
  }) {
    var _movies = movies;
    filterModel.sortingItems.forEach((element) {
      switch (element) {
        case Sorting.nameAToZ:
          return _movies
              .sort((value1, value2) => value1.title.compareTo(value2.title));

        case Sorting.nameZToA:
          _movies
              .sort((value1, value2) => value1.title.compareTo(value2.title));
          _movies = _movies.reversed.toList();
          break;

        case Sorting.rankBottomToTop:
          return _movies.sort((value1, value2) =>
              value2.imDbRating!.compareTo(value1.imDbRating ?? ''));

        case Sorting.rankTopToBottom:
          _movies.sort((value1, value2) =>
              value1.imDbRating!.compareTo(value2.imDbRating ?? ''));
          break;

        case Sorting.yearLateToNew:
          return _movies.sort((value1, value2) =>
              int.parse(value1.year ?? '').compareTo(int.parse(value2.year ?? '')));

        case Sorting.yearNewToLate:
          return _movies.sort((value1, value2) =>
              int.parse(value2.year ?? '').compareTo(int.parse(value1.year ?? '')));
      }
    });

    filterModel.filtersItems.forEach((element) {
      switch (element) {
        case Filters.movies2020:
          _movies = _movies
              .where((element) => int.parse(element.year ?? '') > 2019)
              .toList();
          break;

        case Filters.movies2021:
          _movies = _movies
              .where((element) => int.parse(element.year ?? '') > 2020)
              .toList();
          break;

        case Filters.movies2022:
          _movies = _movies
              .where((element) => int.parse(element.year ?? '') > 2021)
              .toList();
          break;

        case Filters.rank7Up:
          _movies = _movies
              .where(
                  (element) => (double.tryParse(element.imDbRating ?? '') ?? 0) > 7.0)
              .toList();
          break;

        case Filters.rank8Up:
          _movies = _movies
              .where(
                  (element) => (double.tryParse(element.imDbRating ?? '') ?? 0) > 8.0)
              .toList();
          break;

        case Filters.rank9Up:
          _movies = _movies
              .where(
                  (element) => (double.tryParse(element.imDbRating ?? '') ?? 0) > 9.0)
              .toList();
          break;
      }
    });
    return _movies;
  }
}
