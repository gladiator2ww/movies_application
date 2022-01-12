import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movies_application/app/models/movie_model.dart';
import 'package:movies_application/app/models/movie_model_coming_soon.dart';
import 'package:movies_application/app/models/movie_view_model.dart';
import 'package:movies_application/app/models/short_image.dart';
import 'package:movies_application/shared/apikey.dart';


class MoviesProvider {
  Future<List<MovieModel>> fetchPopularMovies() async {
    final data = await http.get(
        Uri.parse('https://imdb-api.com/en/API/MostPopularMovies/${apiKey}'));
    final itemsMovies =
        PopularMoviesItems.fromJson(jsonDecode(data.body)).popularItems;
    return itemsMovies;
  }

  Future<List<MovieModel>> fetchPopularTvs() async {
    final data = await http
        .get(Uri.parse('https://imdb-api.com/en/API/MostPopularTVs/${apiKey}'));
    final itemTvs = TvsItems.fromJson(jsonDecode(data.body)).itemsTvs;
    return itemTvs;
  }

  Future<List<MovieModel>> fetchTop250Movies() async {
    final data = await http
        .get(Uri.parse('https://imdb-api.com/en/API/Top250Movies/${apiKey}'));
    final itemTop250 = Top250Items.fromJson(jsonDecode(data.body)).itemsTop250;
    return itemTop250;
  }

  Future<List<MovieModelComingSoon>> fetchComingSoonMovies() async {
    final data = await http
        .get(Uri.parse('https://imdb-api.com/en/API/ComingSoon/${apiKey}'));
    final itemComingSoon =
        ComingSoonItems.fromJson(jsonDecode(data.body)).itemsComingSoon;
    return itemComingSoon;
  }

  Future<List<ShortImageModel>> fetchMovieShortImage(String movieId) async {
    final data = await http.get(Uri.parse(
        'https://imdb-api.com/en/API/Images/${apiKey}/${movieId}/Short'));
    final itemShortImage =
        ShortImageItems.fromJson(jsonDecode(data.body)).shortImageItems;
    return itemShortImage;
  }

  Future<List<MovieViewModel>> fetchMovieView(String movieId) async {
    final data = await http.get(
        Uri.parse('https://imdb-api.com/en/API/Title/${apiKey}/${movieId}'));
    final itemMovie = MovieItems.fromJson(jsonDecode(data.body)).movieItems;
    return itemMovie;
  }
}

class PopularMoviesItems {
  final List<MovieModel> popularItems;

  PopularMoviesItems({required this.popularItems});

  factory PopularMoviesItems.fromJson(Map<String, dynamic> json) {
    return PopularMoviesItems(
        popularItems: (json['items'] as List)
            .map((json) => MovieModel.fromJson(json))
            .toList());
  }
}

class TvsItems {
  final List<MovieModel> itemsTvs;

  TvsItems({required this.itemsTvs});

  factory TvsItems.fromJson(Map<String, dynamic> json) {
    return TvsItems(
        itemsTvs: (json['items'] as List)
            .map((json) => MovieModel.fromJson(json))
            .toList());
  }
}

class Top250Items {
  final List<MovieModel> itemsTop250;

  Top250Items({required this.itemsTop250});

  factory Top250Items.fromJson(Map<String, dynamic> json) {
    return Top250Items(
        itemsTop250: (json['items'] as List)
            .map((json) => MovieModel.fromJson(json))
            .toList());
  }
}

class ComingSoonItems {
  final List<MovieModelComingSoon> itemsComingSoon;

  ComingSoonItems({required this.itemsComingSoon});

  factory ComingSoonItems.fromJson(Map<String, dynamic> json) {
    return ComingSoonItems(
        itemsComingSoon: (json['items'] as List)
            .map((json) => MovieModelComingSoon.fromJson(json))
            .toList());
  }
}

class ShortImageItems {
  final List<ShortImageModel> shortImageItems;

  ShortImageItems({required this.shortImageItems});

  factory ShortImageItems.fromJson(Map<dynamic, dynamic> json) {
    return ShortImageItems(
        shortImageItems: (json['items'] as List)
            .map((json) => ShortImageModel.fromJson(json))
            .toList());
  }
}

class MovieItems {
  final List<MovieViewModel> movieItems;
  MovieItems({
    required this.movieItems,
  });

  factory MovieItems.fromJson(Map<String, dynamic> json) {
    return MovieItems(
        movieItems: (json['imDbId'] as List)
            .map((json) => MovieViewModel.fromJson(json))
            .toList());
  }
}
