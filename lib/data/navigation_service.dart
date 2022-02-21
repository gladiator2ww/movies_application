import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:movies_application/app/pages/actor_details.dart';
import 'package:movies_application/data/grid_navigation_data.dart';
import 'package:movies_application/app/pages/home.dart';
import 'package:movies_application/app/pages/movie_details.dart';
import 'package:movies_application/app/pages/movies_grid_view.dart';
import 'package:movies_application/app/pages/search.dart';
import 'package:movies_application/app/pages/user.dart';

enum Page {
  home,
  search,
  saved,
  user,
  moviesGridView,
  movieDetails,
  actorDetails,
}

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = Get.key;

  

  Future<dynamic>? navigateTo(
      {required Page page, required Object arguments}) {
    final route = _generateRoute(page, arguments);
    return route != null ? navigatorKey.currentState?.push(route) : null;
  }

  Future<dynamic>? navigateWithReplacementTo(Page page,
      {required Object arguments}) {
    final route = _generateRoute(page, arguments);
    return route != null
        ? navigatorKey.currentState?.pushReplacement(route)
        : null;
  }

  void goBack() {
    navigatorKey.currentState?.pop();
  }

  Route<dynamic>? _generateRoute(Page page, Object arguments) {
    Widget resultPage;

    switch (page) {
      case Page.home:
        resultPage = Home();
        break;
      case Page.search:
        resultPage = Search();
        break;
      case Page.user:
        resultPage = User();
        break;
      case Page.moviesGridView:
        final gridNavigationData = arguments as GridNavigationData;
        resultPage = MoviesGridView(
          gridNavigationData: gridNavigationData,
        );
        break;
      case Page.movieDetails:
        final movieId = arguments as String;
        resultPage = MovieDetails(
          movieId: movieId,
        );
        break;
        case Page.actorDetails:
        final movieId = arguments as String;
        resultPage = ActorDetails(
          movieId: movieId,
        );
        break;

      default:
        resultPage = Home();
        break;
    }

    return _getRoute(resultPage);
  }

  Route<dynamic>? _getRoute(Widget widget, {RouteSettings? settings}) {
    return CupertinoPageRoute(builder: (_) => widget, settings: settings);
  }
}
