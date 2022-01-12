import 'package:movies_application/app/models/movie_model.dart';
import 'package:movies_application/app/models/movie_model_coming_soon.dart';
import 'package:movies_application/app/models/movie_view_model.dart';
import 'package:movies_application/app/models/short_image.dart';
import 'movies_api.dart';

class MoviesRepository {
  MoviesProvider _moviesProvider = MoviesProvider();

  Future<List<MovieModel>> getPopularMovies() =>
      _moviesProvider.fetchPopularMovies();

  Future<List<MovieModel>> getPopularTvs() => _moviesProvider.fetchPopularTvs();

  Future<List<MovieModel>> getTop250Movies() =>
      _moviesProvider.fetchTop250Movies();

  Future<List<MovieModelComingSoon>> getComingSoonMovies() =>
      _moviesProvider.fetchComingSoonMovies();

  Future<List<ShortImageModel>> getMovieShortImage(String movieId) =>
      _moviesProvider.fetchMovieShortImage(movieId);

  Future<List<MovieViewModel>> getMovieView(String movieId) =>
      _moviesProvider.fetchMovieView(movieId);
}
