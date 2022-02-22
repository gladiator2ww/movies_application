import 'package:movies_application/app/models/movie_model/movie_model.dart';
import 'package:movies_application/app/models/movie_model_coming_soon/movie_model_coming_soon.dart';
import 'package:movies_application/data/grid_navigation_data.dart';
import 'package:movies_application/data/dependency_service.dart';
import 'package:movies_application/data/movies_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_application/data/navigation_service.dart';

class MovieModelBloc extends Bloc<MovieModelEvent, MovieModelState> {
  final MoviesRepository _moviesRepository;
  var _comingSoonMoviesList = <MovieModelComingSoon>[];
  var _popularMoviesList = <MovieModel>[];
  var _popularTvsList = <MovieModel>[];
  var _top250MoviesList = <MovieModel>[];

  MovieModelBloc(
    this._moviesRepository,
  ) : super(MovieModelEmptyState()) {
    add(MovieModelInitializeEvent());
  }

  @override
  Stream<MovieModelState> mapEventToState(MovieModelEvent event) async* {
    if (event is MovieModelInitializeEvent) {
      yield MovieModelLoadingState();

      try {
        _comingSoonMoviesList = await _moviesRepository.getComingSoonMovies();
        _popularMoviesList = await _moviesRepository.getPopularMovies();
        _popularTvsList = await _moviesRepository.getPopularTvs();
        _top250MoviesList = await _moviesRepository.getTop250Movies();

        yield MovieModelLoadedState(
          comingSoonMovies: _comingSoonMoviesList,
          popularMovies: _popularMoviesList,
          popularTvs: _popularTvsList,
          top250Movies: _top250MoviesList,
        );
      } catch (_) {
        yield MovieModelEmptyState();
      }
    } else if (event is OnTapSeeAllEvent) {
      navigationService.navigateTo(
          page: Page.moviesGridView, arguments: event.gridNavigationDataEvent);
    } else if (event is OnTapMovieDetailsEvent) {
      navigationService.navigateTo(
          page: Page.movieDetails, arguments: event.movieIdEvent);
    }
  }
}

abstract class MovieModelEvent {}

class MovieModelInitializeEvent extends MovieModelEvent {}

abstract class MovieModelState {}

class MovieModelLoadingState extends MovieModelState {}

class OnTapSeeAllEvent extends MovieModelEvent {
  final GridNavigationData gridNavigationDataEvent;

  OnTapSeeAllEvent({
    required this.gridNavigationDataEvent,
  });
}

class OnTapMovieDetailsEvent extends MovieModelEvent {
  final String movieIdEvent;

  OnTapMovieDetailsEvent({
    required this.movieIdEvent,
  });
}

class MovieModelLoadedState extends MovieModelState {
  List<MovieModelComingSoon> comingSoonMovies;
  List<MovieModel> popularMovies;
  List<MovieModel> popularTvs;
  List<MovieModel> top250Movies;

  MovieModelLoadedState({
    required this.comingSoonMovies,
    required this.popularMovies,
    required this.popularTvs,
    required this.top250Movies,
  });
}

class MovieModelEmptyState extends MovieModelState {}
