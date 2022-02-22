import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_application/app/models/movie_details_model/movie_details_model.dart';
import 'package:movies_application/app/models/short_image/short_image.dart';
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

  @override
  Stream<MovieDetailsState> mapEventToState(MovieDetailsEvent event) async* {
    if (event is MovieDetailsInitializeEvent) {
      yield MovieDetailsLoadingState();

      try {
        _images = await _moviesRepository.getShortImage(event.movieId);
        _movie = await _moviesRepository.getMovieDetails(event.movieId);

        yield MovieDetailsLoadedState(
          movie: _movie,
          imagesList: _images,
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
  final String actorIdEvent;

  OnTapActorDetailsEvent({
    required this.actorIdEvent,
  });
}

abstract class MovieDetailsState {}

class MovieDetailsLoadingState extends MovieDetailsState {}

class MovieDetailsLoadedState extends MovieDetailsState {
  MovieDetailsModel movie;
  List<ShortImageModel> imagesList;

  MovieDetailsLoadedState({
    required this.movie,
    required this.imagesList,
  });
}

class MovieDetailsEmptyState extends MovieDetailsState {}
