import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:movies_application/app/pages/actor_details.dart';
import 'package:movies_application/data/grid_navigation_data.dart';
import 'package:movies_application/app/pages/home.dart';
import 'package:movies_application/app/pages/movie_details.dart';
import 'package:movies_application/app/pages/movies_grid_view.dart';
import 'package:movies_application/app/pages/search.dart';
import 'package:movies_application/app/pages/user.dart';

enum Pages {
  home,
  search,
  saved,
  userPage,
  moviesGridView,
  movieDetails,
  actorDetails,
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
        resultPage = Home();
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
      case Pages.movieDetails:
        final movieId = arguments as String;
        resultPage = MovieDetails(
          movieId: movieId,
        );
        break;
        case Pages.actorDetails:
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
