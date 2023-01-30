import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:movies_application/app/bloc/saved_bloc_mediator.dart';
import 'package:movies_application/app/models/movie_details_model/movie_details_model.dart';
import 'package:movies_application/app/models/saved_item_model/saved_item_model.dart';
import 'package:movies_application/app/models/short_image/short_image.dart';
import 'package:movies_application/app/pages/movie_details.dart';
import 'package:movies_application/data/dependency_service.dart';
import 'package:movies_application/data/movies_repository.dart';
import 'package:movies_application/data/navigation_service.dart';
import 'package:movies_application/data/saved_movies_provider.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final MoviesRepository _moviesRepository;
  final SavedBlocMediator _savedBlocMediator;

  MovieDetailsBloc(
    this._moviesRepository,
    this._savedBlocMediator,
  ) : super(MovieDetailsEmptyState());

  late MovieDetailsModel _movie;
  var _images = <ShortImageModel>[];

  @override
  Stream<MovieDetailsState> mapEventToState(MovieDetailsEvent event) async* {
    if (event is MovieDetailsInitializeEvent) {
      yield MovieDetailsLoadingState();

      try {
        _images = await _moviesRepository.getShortImage(event.movieId);
        _movie = await _moviesRepository.getMovieDetails(event.movieId);
        final _savedItems = await savedMoviesProvider.getSavedItems();
        final isFavorite =
            _savedItems.any((element) => element.id == _movie.id);
        yield MovieDetailsLoadedState(
          movie: _movie,
          imagesList: _images,
          isFavorite: isFavorite,
        );
      } catch (_) {
        yield MovieDetailsEmptyState();
      }
    } else if (event is OnTapMovieDetailsEvent) {
      navigationService.navigateTo(
          page: Page.movieDetails, arguments: event.movieIdEvent);
    } else if (event is OnTapActorDetailsEvent) {
      navigationService.navigateTo(
          page: Page.actorDetails, arguments: event.actorIdEvent);
    } else if (event is OnTapMovieTrailerEvent) {
      navigationService.navigateTo(
          page: Page.trailer, arguments: event.movieIdEvent);
    } else if (event is OnTapSavedEvent) {
      savedMoviesProvider.insertSavedItem(
        _movie.toSavedItemModel(),
      );
      _savedBlocMediator.addItem();
      yield MovieDetailsLoadedState(
        movie: _movie,
        imagesList: _images,
        isFavorite: true,
      );
    }
  }
}

abstract class MovieDetailsEvent {}

class MovieDetailsInitializeEvent extends MovieDetailsEvent {
  final String movieId;

  MovieDetailsInitializeEvent({
    required this.movieId,
  });
}

class OnTapMovieDetailsEvent extends MovieDetailsEvent {
  final String movieIdEvent;

  OnTapMovieDetailsEvent({
    required this.movieIdEvent,
  });
}

class OnTapMovieTrailerEvent extends MovieDetailsEvent {
  final String movieIdEvent;

  OnTapMovieTrailerEvent({
    required this.movieIdEvent,
  });
}

class OnTapActorDetailsEvent extends MovieDetailsEvent {
  final String actorIdEvent;

  OnTapActorDetailsEvent({
    required this.actorIdEvent,
  });
}

class OnTapSavedEvent extends MovieDetailsEvent {}

abstract class MovieDetailsState {}

class MovieDetailsLoadingState extends MovieDetailsState {}

class MovieDetailsLoadedState extends MovieDetailsState {
  MovieDetailsModel movie;
  List<ShortImageModel> imagesList;
  bool isFavorite;

  MovieDetailsLoadedState({
    required this.movie,
    required this.imagesList,
    this.isFavorite = false,
  });
}

class MovieDetailsEmptyState extends MovieDetailsState {}
