import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:movies_application/app/bloc/saved_bloc_mediator.dart';
import 'package:movies_application/data/movies_repository.dart';
import 'package:movies_application/data/saved_movies_provider.dart';
import 'package:movies_application/generated/l10n.dart';
import 'navigation_service.dart';

final localize = S.of(Get.key.currentContext!);

GetIt getIt = GetIt.instance;

NavigationService get navigationService => getIt.get<NavigationService>();
SavedMoviesProvider get savedMoviesProvider => getIt.get<SavedMoviesProvider>();
SavedBlocMediator get savedBlocMediator => getIt.get<SavedBlocMediator>();
MoviesRepository get moviesRepository => getIt.get<MoviesRepository>();

class DependencyService {
  static GetIt registerServices() {
    getIt.reset();
    print('reset');
    getIt.registerLazySingleton(() => NavigationService());
    getIt.registerLazySingleton(() => SavedMoviesProvider());
    getIt.registerLazySingleton(() => SavedBlocMediator());
    getIt.registerLazySingleton(() => MoviesRepository());

    return getIt;
  }
  // static void _registerBlocs( GetIt getIt) {
  // getIt.registerFactory(() => MovieViewBloc());
  // }
}
