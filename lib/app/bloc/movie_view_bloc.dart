import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_application/app/models/movie_view_model.dart';
import 'package:movies_application/app/models/short_image.dart';
import 'package:movies_application/data/movies_repository.dart';

class MovieViewBloc extends Bloc<MovieViewEvent, MovieViewState> {
  final MoviesRepository _moviesRepository;

  MovieViewBloc(
    this._moviesRepository,
  ) : super(MovieViewEmptyState());

  var _movie = <MovieViewModel>[];
  var _image = <ShortImageModel>[];

  @override
  Stream<MovieViewState> mapEventToState(MovieViewEvent event) async* {
    if (event is MovieViewInitializeEvent) {
      yield MovieViewLoadingState();

      try {
        _image = await _moviesRepository.getMovieShortImage(event.movieId);
        _movie = await _moviesRepository.getMovieView(event.movieId);
        yield MovieViewLoadedState(
          movieList: _movie,
          imageList: _image,
        );
      } catch (_) {
        yield MovieViewEmptyState();
      }
    }
  }
}

abstract class MovieViewEvent {}

class MovieViewInitializeEvent extends MovieViewEvent {
  final String movieId;
  MovieViewInitializeEvent({
    required this.movieId,
  });
}

abstract class MovieViewState {}

class MovieViewLoadingState extends MovieViewState {}

class MovieViewLoadedState extends MovieViewState {
  List<MovieViewModel> movieList;
  List<ShortImageModel> imageList;

  MovieViewLoadedState({
    required this.movieList,
    required this.imageList,
  });
}

class MovieViewEmptyState extends MovieViewState {}
