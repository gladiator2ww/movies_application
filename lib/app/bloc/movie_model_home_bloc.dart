import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:movies_application/app/bloc/saved_bloc_mediator.dart';
import 'package:movies_application/app/models/movie_model/movie_model.dart';
import 'package:movies_application/app/models/movie_model_coming_soon/movie_model_coming_soon.dart';
import 'package:movies_application/app/models/saved_item_model/saved_item_model.dart';
import 'package:movies_application/data/dependency_service.dart';
import 'package:movies_application/data/grid_navigation_data.dart';
import 'package:movies_application/data/movies_repository.dart';
import 'package:movies_application/data/navigation_service.dart';
import 'package:movies_application/data/saved_movies_provider.dart';

import '../models/movie_view_model/movie_view_model.dart';

class MovieModelBloc extends Bloc<MovieModelEvent, MovieModelState> {
  final MoviesRepository _moviesRepository;
  final SavedMoviesProvider _savedMoviesProvider;
  final SavedBlocMediator _savedBlocMediator;

  MovieModelBloc(
    this._moviesRepository,
    this._savedMoviesProvider,
    this._savedBlocMediator,
  ) : super(MovieModelEmptyState()) {
    add(MovieModelInitializeEvent());
  }

  var _comingSoonMoviesList = <MovieModelComingSoon>[];
  var _popularMoviesList = <MovieModel>[];
  var _popularTvsList = <MovieModel>[];
  var _top250MoviesList = <MovieModel>[];
  var _savedItems = <SavedItemModel>[];

  @override
  Stream<MovieModelState> mapEventToState(MovieModelEvent event) async* {
    if (event is MovieModelInitializeEvent) {
      yield MovieModelLoadingState();

      try {
        _comingSoonMoviesList = await _moviesRepository.getComingSoonMovies();
        _popularMoviesList = await _moviesRepository.getPopularMovies();
        _popularTvsList = await _moviesRepository.getPopularTvs();
        _top250MoviesList = await _moviesRepository.getTop250Movies();
        _savedItems = await _savedMoviesProvider.getSavedItems();

        yield MovieModelLoadedState(
          comingSoonMovies: _comingSoonMoviesList,
          popularMovies: _popularMoviesList.toMovieViewModels(_savedItems),
          popularTvs: _popularTvsList.toMovieViewModels(_savedItems),
          top250Movies: _top250MoviesList.toMovieViewModels(_savedItems),
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
    } else if (event is OnTapSavedEvent) {
      _savedMoviesProvider.insertSavedItem(
        _getSavedModelById(
          event.movieId,
          event.moviesCategory,
        ),
      );
      _savedBlocMediator.addItem();
      _savedItems.add(
        _getSavedModelById(
          event.movieId,
          event.moviesCategory,
        ),
      );
      yield MovieModelLoadedState(
        comingSoonMovies: _comingSoonMoviesList,
        popularMovies: _popularMoviesList.toMovieViewModels(_savedItems),
        popularTvs: _popularTvsList.toMovieViewModels(_savedItems),
        top250Movies: _top250MoviesList.toMovieViewModels(_savedItems),
      );
    }
  }

  SavedItemModel _getSavedModelById(
      String movieId, MoviesCategory moviesCategory) {
    switch (moviesCategory) {
      case MoviesCategory.popularMovies:
        return _popularMoviesList
            .firstWhere((element) => element.id == movieId)
            .toSavedItemModel();

      case MoviesCategory.popularTvs:
        return _popularTvsList
            .firstWhere((element) => element.id == movieId)
            .toSavedItemModel();

      case MoviesCategory.top250Movies:
        return _top250MoviesList
            .firstWhere((element) => element.id == movieId)
            .toSavedItemModel();
    }
  }
}

abstract class MovieModelEvent {}

class MovieModelInitializeEvent extends MovieModelEvent {}

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

class OnTapSavedEvent extends MovieModelEvent {
  String movieId;
  MoviesCategory moviesCategory;

  OnTapSavedEvent({
    required this.movieId,
    required this.moviesCategory,
  });
}

abstract class MovieModelState {}

class MovieModelLoadingState extends MovieModelState {}

class MovieModelLoadedState extends MovieModelState {
  final List<MovieModelComingSoon> comingSoonMovies;
  final List<MovieViewModel> popularMovies;
  final List<MovieViewModel> popularTvs;
  final List<MovieViewModel> top250Movies;

  MovieModelLoadedState({
    required this.comingSoonMovies,
    required this.popularMovies,
    required this.popularTvs,
    required this.top250Movies,
  });
}

class MovieModelEmptyState extends MovieModelState {}

extension OnListMovieViewModel on List<MovieModel> {
  List<MovieViewModel> toMovieViewModels(List<SavedItemModel> savedItems) {
    return map((e) {
      final isFavorite = savedItems.any((element) => element.id == e.id);
      return e.toMovieViewModel().copyWith(isFavorite: isFavorite);
    }).toList();
  }
}
