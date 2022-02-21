import 'package:movies_application/app/models/box_office/box_office.dart';
import 'package:movies_application/app/models/movie_details_model/movie_details_model.dart';
import 'package:movies_application/app/models/movie_model/movie_model.dart';
import 'package:movies_application/app/models/movie_model_coming_soon/movie_model_coming_soon.dart';
import 'package:movies_application/app/models/search_model/search_model.dart';
import 'package:movies_application/app/models/short_image/short_image.dart';
import 'movies_api.dart';
import 'package:movies_application/app/models/actor_details_model/actor_details_model.dart';

class MoviesRepository {
  MoviesProvider _moviesProvider = MoviesProvider();

  Future<List<MovieModel>> getPopularMovies() =>
      _moviesProvider.fetchPopularMovies();

  Future<List<MovieModel>> getPopularTvs() => _moviesProvider.fetchPopularTvs();

  Future<List<MovieModel>> getTop250Movies() =>
      _moviesProvider.fetchTop250Movies();

  Future<List<MovieModelComingSoon>> getComingSoonMovies() =>
      _moviesProvider.fetchComingSoonMovies();

  Future<List<ShortImageModel>> getShortImage(String movieId) =>
      _moviesProvider.fetchMovieShortImage(movieId);

  Future<MovieDetailsModel> getMovieDetails(String movieId) =>
      _moviesProvider.fetchMovieDetails(movieId);

  Future<ActorDetailsModel> getActorDetails(String movieId) =>
      _moviesProvider.fetchActorDetails(movieId);

  Future<List<BoxOffice>> getBoxOffice() => _moviesProvider.fetchBoxOffice();

  Future<List<SearchModel>> getSearchItems(String titleId) =>
      _moviesProvider.fetchSearch(titleId);
}
