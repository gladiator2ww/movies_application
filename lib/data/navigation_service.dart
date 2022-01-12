import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_application/app/models/grid_navigation_data.dart';
import 'package:movies_application/app/pages/homepage.dart';
import 'package:movies_application/app/pages/movie_view.dart';
import 'package:movies_application/app/pages/movies_grid_view.dart';
import 'package:movies_application/app/pages/search_page.dart';
import 'package:movies_application/app/pages/user_page.dart';
enum Pages {
  home,
  search,
  saved,
  userPage,
  moviesGridView,
  movieView,
  actorPage,
}

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = Get.key;

  final Map<Pages, int> _shellPageToInt = {
    Pages.home: 0,
    Pages.search: 1,
    Pages.saved: 2,
    Pages.userPage: 3,
  };

  Future<dynamic>? navigateTo(
      {required Pages page, required Object arguments}) {
    final route = _generateRoute(page, arguments);
    return route != null ? navigatorKey.currentState?.push(route) : null;
  }

  Future<dynamic>? navigateWithReplacementTo(Pages page,
      {required Object arguments}) {
    final route = _generateRoute(page, arguments);
    return route != null
        ? navigatorKey.currentState?.pushReplacement(route)
        : null;
  }

  void goBack() {
    navigatorKey.currentState?.pop();
  }

  Route<dynamic>? _generateRoute(Pages page, Object arguments) {
    Widget resultPage;

    switch (page) {
      case Pages.home:
        resultPage = HomePage();
        break;
      case Pages.search:
        resultPage = SearchPage();
        break;
      case Pages.userPage:
        resultPage = UserPage();
        break;
      case Pages.moviesGridView:
        final gridNavigationData = arguments as GridNavigationData;
        resultPage = MoviesGridView(
          gridNavigationData: gridNavigationData,
        );
        break;
      case Pages.movieView:
        final movieId = arguments as String;
        resultPage = MovieView(
          movieId: movieId,
          // rating: movie.imDbRating ?? ''
        );
        break;

      default:
        resultPage = HomePage();
        break;
    }

    return _getRoute(resultPage);
  }

  Route<dynamic>? _getRoute(Widget widget, {RouteSettings? settings}) {
    return CupertinoPageRoute(builder: (_) => widget, settings: settings);
  }
}
