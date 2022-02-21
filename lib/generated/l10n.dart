// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Coming Soon`
  String get coming_soon {
    return Intl.message(
      'Coming Soon',
      name: 'coming_soon',
      desc: '',
      args: [],
    );
  }

  /// `Most Popular Movies`
  String get most_popular_movies {
    return Intl.message(
      'Most Popular Movies',
      name: 'most_popular_movies',
      desc: '',
      args: [],
    );
  }

  /// `Most Popular TVs`
  String get most_popular_tvs {
    return Intl.message(
      'Most Popular TVs',
      name: 'most_popular_tvs',
      desc: '',
      args: [],
    );
  }

  /// `Top 250 Movies`
  String get top_movies250 {
    return Intl.message(
      'Top 250 Movies',
      name: 'top_movies250',
      desc: '',
      args: [],
    );
  }

  /// `Top 250 TVs`
  String get top_tvs250 {
    return Intl.message(
      'Top 250 TVs',
      name: 'top_tvs250',
      desc: '',
      args: [],
    );
  }

  /// `SEE ALL`
  String get see_all {
    return Intl.message(
      'SEE ALL',
      name: 'see_all',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Saved`
  String get saved {
    return Intl.message(
      'Saved',
      name: 'saved',
      desc: '',
      args: [],
    );
  }

  /// `You`
  String get you {
    return Intl.message(
      'You',
      name: 'you',
      desc: '',
      args: [],
    );
  }

  /// `CANCEL`
  String get cancel {
    return Intl.message(
      'CANCEL',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Filters`
  String get filters {
    return Intl.message(
      'Filters',
      name: 'filters',
      desc: '',
      args: [],
    );
  }

  /// `DONE`
  String get done {
    return Intl.message(
      'DONE',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `BY SORT`
  String get by_sort {
    return Intl.message(
      'BY SORT',
      name: 'by_sort',
      desc: '',
      args: [],
    );
  }

  /// `BY FILTER`
  String get by_filter {
    return Intl.message(
      'BY FILTER',
      name: 'by_filter',
      desc: '',
      args: [],
    );
  }

  /// `by title ascending A-Z`
  String get name_A_to_Z {
    return Intl.message(
      'by title ascending A-Z',
      name: 'name_A_to_Z',
      desc: '',
      args: [],
    );
  }

  /// `by title descending Z-A`
  String get name_Z_to_A {
    return Intl.message(
      'by title descending Z-A',
      name: 'name_Z_to_A',
      desc: '',
      args: [],
    );
  }

  /// `by rating ascending`
  String get rank_top_to_bottom {
    return Intl.message(
      'by rating ascending',
      name: 'rank_top_to_bottom',
      desc: '',
      args: [],
    );
  }

  /// `by rating descending`
  String get rank_bottom_to_top {
    return Intl.message(
      'by rating descending',
      name: 'rank_bottom_to_top',
      desc: '',
      args: [],
    );
  }

  /// `by year descending`
  String get year_new_to_late {
    return Intl.message(
      'by year descending',
      name: 'year_new_to_late',
      desc: '',
      args: [],
    );
  }

  /// `by year ascending`
  String get year_late_to_new {
    return Intl.message(
      'by year ascending',
      name: 'year_late_to_new',
      desc: '',
      args: [],
    );
  }

  /// `year 2020+`
  String get movies_2020_year {
    return Intl.message(
      'year 2020+',
      name: 'movies_2020_year',
      desc: '',
      args: [],
    );
  }

  /// `year 2021+`
  String get movies_2021_year {
    return Intl.message(
      'year 2021+',
      name: 'movies_2021_year',
      desc: '',
      args: [],
    );
  }

  /// `rating 7+`
  String get rank_7_up {
    return Intl.message(
      'rating 7+',
      name: 'rank_7_up',
      desc: '',
      args: [],
    );
  }

  /// `rating 8+`
  String get rank_8_up {
    return Intl.message(
      'rating 8+',
      name: 'rank_8_up',
      desc: '',
      args: [],
    );
  }

  /// `rating 9+`
  String get rank_9_up {
    return Intl.message(
      'rating 9+',
      name: 'rank_9_up',
      desc: '',
      args: [],
    );
  }

  /// `Connection to the server, please wait`
  String get connection_service {
    return Intl.message(
      'Connection to the server, please wait',
      name: 'connection_service',
      desc: '',
      args: [],
    );
  }

  /// `year 2022+`
  String get movies_2022_year {
    return Intl.message(
      'year 2022+',
      name: 'movies_2022_year',
      desc: '',
      args: [],
    );
  }

  /// `Cast`
  String get cast {
    return Intl.message(
      'Cast',
      name: 'cast',
      desc: '',
      args: [],
    );
  }

  /// `Similars Movies`
  String get similars_movies {
    return Intl.message(
      'Similars Movies',
      name: 'similars_movies',
      desc: '',
      args: [],
    );
  }

  /// `Add to saved`
  String get add_to_saved {
    return Intl.message(
      'Add to saved',
      name: 'add_to_saved',
      desc: '',
      args: [],
    );
  }

  /// `Filmography`
  String get filmography {
    return Intl.message(
      'Filmography',
      name: 'filmography',
      desc: '',
      args: [],
    );
  }

  /// `Top Box Office`
  String get top_box_office {
    return Intl.message(
      'Top Box Office',
      name: 'top_box_office',
      desc: '',
      args: [],
    );
  }

  /// `title`
  String get title {
    return Intl.message(
      'title',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `weekend`
  String get weekend {
    return Intl.message(
      'weekend',
      name: 'weekend',
      desc: '',
      args: [],
    );
  }

  /// `gross`
  String get gross {
    return Intl.message(
      'gross',
      name: 'gross',
      desc: '',
      args: [],
    );
  }

  /// `weeks`
  String get weeks {
    return Intl.message(
      'weeks',
      name: 'weeks',
      desc: '',
      args: [],
    );
  }

  /// `Search movie...`
  String get search_movie {
    return Intl.message(
      'Search movie...',
      name: 'search_movie',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
