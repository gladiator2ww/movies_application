import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_application/app/models/filter_model.dart';
import 'package:movies_application/app/models/movie_model/movie_model.dart';
import 'package:movies_application/data/dependency_service.dart';
import 'package:movies_application/data/grid_navigation_data.dart';
import 'package:movies_application/app/models/sorting.dart';
import 'package:movies_application/app/services/dialog_service.dart';
import 'package:movies_application/data/filter_manager.dart';
import 'package:movies_application/data/movies_repository.dart';
import 'package:movies_application/data/navigation_service.dart';


class MovieGridViewBloc extends Bloc<MovieGridViewEvent, MovieGridViewState> {
  final MoviesRepository _moviesRepository;
  var sortingItems = Sorting.values;
  var filtersItems = Filters.values;

  MovieGridViewBloc(
    this._moviesRepository,
  ) : super(MovieGridViewEmptyState());

  var _movies = <MovieModel>[];
  var _filterModel = FilterModel(sortingItems: [], filtersItems: []);

  @override
  Stream<MovieGridViewState> mapEventToState(MovieGridViewEvent event) async* {
    if (event is MovieGridViewInitializeEvent) {
      yield MovieGridViewLoadingState();

      try {
        final type = event.gridNavigationDataEvent.titleCategory;

        switch (type) {
          case MoviesCategory.popularMovies:
            _movies = await _moviesRepository.getPopularMovies();
            break;
          case MoviesCategory.popularTvs:
            _movies = await _moviesRepository.getPopularTvs();
            break;
          case MoviesCategory.top250Movies:
            _movies = await _moviesRepository.getTop250Movies();
            break;
        }

        yield MovieGridViewLoadedState(
          moviesList: _movies,
        );
      } catch (_) {
        yield MovieGridViewEmptyState();
      }
    } else if (event is MoviesGridViewShowDialogEvent) {
      _filterModel =
          await DialogService().showDialogFilters(_filterModel) ?? _filterModel;

      if (_filterModel.filtersItems.isNotEmpty ||
          _filterModel.sortingItems.isNotEmpty) {
        _movies = FilterManager.getFilteredMovies(
            filterModel: _filterModel, movies: _movies);
      } 
      yield MovieGridViewLoadedState(
        moviesList: _movies,
      );
    }else if (event is OnTapMovieDetailsEvent) {
      navigationService.navigateTo(
          page: Page.movieDetails, arguments: event.movieIdEvent);
    }
  }
}

abstract class MovieGridViewEvent {}

class MovieGridViewInitializeEvent extends MovieGridViewEvent {
  final GridNavigationData gridNavigationDataEvent;

  MovieGridViewInitializeEvent({
    required this.gridNavigationDataEvent,
  });
}
class OnTapMovieDetailsEvent extends MovieGridViewEvent {
  final String movieIdEvent;

  OnTapMovieDetailsEvent({
    required this.movieIdEvent,
  });
}

class MoviesGridViewShowDialogEvent extends MovieGridViewEvent {}

abstract class MovieGridViewState {}

class MovieGridViewLoadingState extends MovieGridViewState {}

class MovieGridViewLoadedState extends MovieGridViewState {
  List<MovieModel> moviesList;

  MovieGridViewLoadedState({
    required this.moviesList,
  });
}

class MovieGridViewEmptyState extends MovieGridViewState {}
