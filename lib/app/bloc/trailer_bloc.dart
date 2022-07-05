import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_application/app/models/movie_details_model/movie_details_model.dart';
import 'package:movies_application/app/models/trailer_model/movie_trailer_model.dart';
import 'package:movies_application/data/movies_repository.dart';

class MovieTrailerBloc extends Bloc<TrailerEvent, MovieTrailerState> {
  final MoviesRepository _moviesRepository;

  MovieTrailerBloc(
    this._moviesRepository,
  ) : super(MovieTrailerEmptyState());

  MovieTrailerModel? _trailer;
  MovieDetailsModel? _movie;

  @override
  Stream<MovieTrailerState> mapEventToState(TrailerEvent event) async* {
    if (event is MovieTrailerInitializeEvent) {
      yield MovieTrailerLoadingState();

      try {
        _trailer = await _moviesRepository.getTrailer(event.movieId);
        _movie = await _moviesRepository.getMovieDetails(event.movieId);

        yield MovieTrailerLoadedState(
          trailer: _trailer!,
          movie: _movie!,
        );
      } catch (_) {
        yield MovieTrailerEmptyState();
      }
    }
  }
}

abstract class TrailerEvent {}

class MovieTrailerInitializeEvent extends TrailerEvent {
  final String movieId;

  MovieTrailerInitializeEvent({
    required this.movieId,
  });
}

abstract class MovieTrailerState {}

class MovieTrailerLoadingState extends MovieTrailerState {}

class MovieTrailerLoadedState extends MovieTrailerState {
  MovieTrailerModel trailer;
  MovieDetailsModel movie;

  MovieTrailerLoadedState({
    required this.trailer,
    required this.movie,
  });
}

class MovieTrailerEmptyState extends MovieTrailerState {}
