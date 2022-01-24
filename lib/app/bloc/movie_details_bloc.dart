import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_application/app/models/actor_model.dart';
import 'package:movies_application/app/models/movie_details_model.dart';
import 'package:movies_application/app/models/movie_model.dart';
import 'package:movies_application/app/models/short_image.dart';
import 'package:movies_application/data/dependency_service.dart';
import 'package:movies_application/data/movies_repository.dart';
import 'package:movies_application/data/navigation_service.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final MoviesRepository _moviesRepository;

  MovieDetailsBloc(
    this._moviesRepository,
  ) : super(MovieDetailsEmptyState());

  late MovieDetailsModel _movie;
  var _images = <ShortImageModel>[];
  var _actor = <ActorModel>[];
  var _similarMovie = <MovieModel>[];

  @override
  Stream<MovieDetailsState> mapEventToState(MovieDetailsEvent event) async* {
    if (event is MovieDetailsInitializeEvent) {
      yield MovieDetailsLoadingState();

      try {
        _images = await _moviesRepository.getMovieShortImage(event.movieId);
        _movie = await _moviesRepository.getMovieView(event.movieId);
        _actor = await _moviesRepository.getMovieDetailsActor(event.movieId);
        _similarMovie =
            await _moviesRepository.getMoviesSimilars(event.movieId);
        yield MovieDetailsLoadedState(
          movie: _movie,
          imagesList: _images,
          actor: _actor,
          similarMovie: _similarMovie,
        );
      } catch (_) {
        yield MovieDetailsEmptyState();
      }
    } else if (event is OnTapMovieDetailsEvent) {
      navigationService.navigateTo(
          page: Pages.movieDetails, arguments: event.movieIdEvent);
    } else if (event is OnTapActorDetailsEvent) {
      navigationService.navigateTo(
          page: Pages.actorDetails, arguments: event.movieIdEvent);
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

class OnTapActorDetailsEvent extends MovieDetailsEvent {
  final String movieIdEvent;
  OnTapActorDetailsEvent({
    required this.movieIdEvent,
  });
}

abstract class MovieDetailsState {}

class MovieDetailsLoadingState extends MovieDetailsState {}

class MovieDetailsLoadedState extends MovieDetailsState {
  MovieDetailsModel movie;
  List<ShortImageModel> imagesList;
  List<ActorModel> actor;
  List<MovieModel> similarMovie;

  MovieDetailsLoadedState({
    required this.movie,
    required this.imagesList,
    required this.actor,
    required this.similarMovie,
  });
}

class MovieDetailsEmptyState extends MovieDetailsState {}
