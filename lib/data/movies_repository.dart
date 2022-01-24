import 'package:movies_application/app/models/actor_model.dart';
import 'package:movies_application/app/models/movie_details_model.dart';
import 'package:movies_application/app/models/movie_model_coming_soon.dart';
import 'package:movies_application/app/models/short_image.dart';
import 'package:movies_application/app/models/actor_details_model.dart';
import 'package:movies_application/app/models/actor_movies_model.dart';
import 'package:movies_application/app/models/movie_model.dart';
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

  Future<MovieDetailsModel> getMovieView(String movieId) =>
      _moviesProvider.fetchMovieView(movieId);

  Future<List<MovieModel>> getMoviesSimilars(String movieId) =>
      _moviesProvider.fetchSimilarsMovies(movieId);

  Future<List<ActorModel>> getMovieDetailsActor(String movieId) =>
      _moviesProvider.fetchMovieDetailsActor(movieId);

  Future<ActorDetailsModel> getActorDetails(String movieId) =>
      _moviesProvider.fetchActorDetails(movieId);

  Future<List<ActorMoviesModel>> getActorMovies(String movieId) =>
      _moviesProvider.fetchActorMovies(movieId);
}
