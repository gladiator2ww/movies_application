import 'package:movies_application/data/dependency_service.dart';

enum Sorting {
  nameAToZ,
  nameZToA,
  rankTopToBottom,
  rankBottomToTop,
  yearLateToNew,
  yearNewToLate,
}

enum Filters {
  movies2020,
  movies2021,
  movies2022,
  rank7Up,
  rank8Up,
  rank9Up,
}

extension SortingExtension on Sorting {
  String toSortingString() {
    switch (this) {
      case Sorting.nameAToZ:
        return localize.name_A_to_Z;
      case Sorting.nameZToA:
        return localize.name_Z_to_A;
      case Sorting.rankTopToBottom:
        return localize.rank_top_to_bottom;
      case Sorting.rankBottomToTop:
        return localize.rank_bottom_to_top;
      case Sorting.yearLateToNew:
        return localize.year_late_to_new;
      case Sorting.yearNewToLate:
        return localize.year_new_to_late;
    }
  }
}

extension FiltersExtention on Filters {
  String toFiltersString() {
    switch (this) {
      case Filters.movies2020:
        return localize.movies_2020_year;
      case Filters.movies2021:
        return localize.movies_2021_year;
      case Filters.movies2022:
        return localize.movies_2022_year;
      case Filters.rank7Up:
        return localize.rank_7_up;
      case Filters.rank8Up:
        return localize.rank_8_up;
      case Filters.rank9Up:
        return localize.rank_9_up;
    }
  }
}
