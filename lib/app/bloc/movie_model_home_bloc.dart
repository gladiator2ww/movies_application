import 'package:movies_application/app/models/grid_navigation_data.dart';
import 'package:movies_application/app/models/movie_model.dart';
import 'package:movies_application/app/models/movie_model_coming_soon.dart';
import 'package:movies_application/data/dependency_service.dart';
import 'package:movies_application/data/movies_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_application/data/navigation_service.dart';

class MovieModelBloc extends Bloc<MovieModelEvent, MovieModelState> {
  final MoviesRepository _moviesRepository;

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
        final List<MovieModelComingSoon> _comingSoonMoviesList =
            await _moviesRepository.getComingSoonMovies();
        final List<MovieModel> _popularMoviesList =
            await _moviesRepository.getPopularMovies();
        final List<MovieModel> _popularTvsList =
            await _moviesRepository.getPopularTvs();
        final List<MovieModel> _top250MoviesList =
            await _moviesRepository.getTop250Movies();

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
          page: Pages.moviesGridView, arguments: event.gridNavigationDataEvent);
    } else if (event is OnTapMovieViewEvent) {
      navigationService.navigateWithReplacementTo(
           Pages.movieView, arguments: event.movieIdEvent);
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

class OnTapMovieViewEvent extends MovieModelEvent {
  final String movieIdEvent;
  OnTapMovieViewEvent({
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
