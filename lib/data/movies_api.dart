import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movies_application/app/models/box_office/box_office.dart';
import 'package:movies_application/app/models/movie_details_model/movie_details_model.dart';
import 'package:movies_application/app/models/movie_model/movie_model.dart';
import 'package:movies_application/app/models/movie_model_coming_soon/movie_model_coming_soon.dart';
import 'package:movies_application/app/models/search_model/search_model.dart';
import 'package:movies_application/app/models/short_image/short_image.dart';
import 'package:movies_application/app/models/actor_details_model/actor_details_model.dart';
import 'package:movies_application/shared/apikey.dart';
import '../app/models/saved_item_model/saved_item_model.dart';
import '../app/models/trailer_model/movie_trailer_model.dart';

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
    if (data.statusCode == 200) {
      final itemTvs = TvsItems.fromJson(jsonDecode(data.body)).itemsTvs;
      return itemTvs;
    } else
      return [];
  }

  Future<List<MovieModel>> fetchTop250Movies() async {
    final data = await http
        .get(Uri.parse('https://imdb-api.com/en/API/Top250Movies/${apiKey}'));
    if (data.statusCode == 200) {
      final itemTop250 =
          Top250Items.fromJson(jsonDecode(data.body)).itemsTop250;
      return itemTop250;
    } else
      return [];
  }

  Future<List<MovieModelComingSoon>> fetchComingSoonMovies() async {
    final data = await http
        .get(Uri.parse('https://imdb-api.com/en/API/ComingSoon/${apiKey}'));

    if (data.statusCode == 200) {
      final itemComingSoon =
          ComingSoonItems.fromJson(jsonDecode(data.body)).itemsComingSoon;
      return itemComingSoon;
    } else
      return [];
  }

  Future<List<ShortImageModel>> fetchShortImage(String movieId) async {
    final data = await http.get(Uri.parse(
        'https://imdb-api.com/en/API/Images/${apiKey}/${movieId}/Short'));
    if (data.statusCode == 200) {
      final itemShortImage =
          ShortImageItems.fromJson(jsonDecode(data.body)).shortImageItems;
      return itemShortImage;
    } else
      return [];
  }

  Future<MovieDetailsModel> fetchMovieDetails(String movieId) async {
    final data = await http.get(
        Uri.parse('https://imdb-api.com/en/API/Title/${apiKey}/${movieId}'));
    if (data.statusCode == 200) {
      final itemMovieDetails =
          MovieDetailsModel.fromJson(jsonDecode(data.body));
      return itemMovieDetails;
    } else
      return throw ('');
  }

  Future<ActorDetailsModel> fetchActorDetails(String actorId) async {
    final data = await http.get(
        Uri.parse('https://imdb-api.com/en/API/Name/${apiKey}/${actorId}'));
    if (data.statusCode == 200) {
      final itemActor = ActorDetailsModel.fromJson(jsonDecode(data.body));
      return itemActor;
    } else
      return throw ('');
  }

  Future<List<BoxOffice>> fetchBoxOffice() async {
    final data = await http
        .get(Uri.parse('https://imdb-api.com/en/API/BoxOffice/${apiKey}'));
    if (data.statusCode == 200) {
      final itemBoxOffice =
          BoxOfficeItems.fromJson(jsonDecode(data.body)).boxOfficeItems;
      return itemBoxOffice;
    } else
      return [];
  }

  Future<List<SearchModel>> fetchSearch(String titleId) async {
    final data = await http.get(Uri.parse(
        'https://imdb-api.com/en/API/SearchTitle/${apiKey}/${titleId}'));
    if (data.statusCode == 200) {
      final itemSearchModel =
          SearchItems.fromJson(jsonDecode(data.body)).searchItems;
      return itemSearchModel;
    }
    return [];
  }

  Future<MovieTrailerModel> fetchTrailer(String movieId) async {
    final data = await http.get(Uri.parse(
        'https://imdb-api.com/en/API/YouTubeTrailer/${apiKey}/${movieId}'));
    if (data.statusCode == 200) {
      final itemTrailer = MovieTrailerModel.fromJson(jsonDecode(data.body));
      return itemTrailer;
    } else
      return throw ('');
  }

  Future<SavedItemModel> fetchSavedItems(String savedId) async {
    final data = await http.get(
        Uri.parse('https://imdb-api.com/en/API/Title/${apiKey}/${savedId}'));
    if (data.statusCode == 200) {
      final itemSaved = SavedItemModel.fromJson(jsonDecode(data.body));
      ;
      return itemSaved;
    } else
      return throw ('');
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

class BoxOfficeItems {
  final List<BoxOffice> boxOfficeItems;

  BoxOfficeItems({required this.boxOfficeItems});

  factory BoxOfficeItems.fromJson(Map<dynamic, dynamic> json) {
    return BoxOfficeItems(
        boxOfficeItems: (json['items'] as List)
            .map((json) => BoxOffice.fromJson(json))
            .toList());
  }
}

class SearchItems {
  final List<SearchModel> searchItems;

  SearchItems({required this.searchItems});

  factory SearchItems.fromJson(Map<dynamic, dynamic> json) {
    return SearchItems(
        searchItems: (json['results'] as List)
            .map((json) => SearchModel.fromJson(json))
            .toList());
  }
}
