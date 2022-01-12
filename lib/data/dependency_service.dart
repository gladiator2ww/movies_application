import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:movies_application/generated/l10n.dart';

import 'navigation_service.dart';

final localize = S.of(Get.key.currentContext!);

GetIt getIt = GetIt.instance;

NavigationService get navigationService => getIt.get<NavigationService>();

class DependencyService {
  static GetIt registerServices() {
    getIt.reset();
    print('reset');
    getIt.registerLazySingleton(() => NavigationService());
    return getIt;
  }
  // static void _registerBlocs( GetIt getIt) {
  // getIt.registerFactory(() => MovieViewBloc());
  // }
}
