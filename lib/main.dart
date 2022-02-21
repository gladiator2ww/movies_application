import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:movies_application/app/theme/theme_provider.dart';
import 'app/pages/shell.dart';
import 'data/dependency_service.dart';
import 'data/navigation_service.dart';
import 'generated/l10n.dart';
import 'package:get/get.dart';

void main() {
  // DependencyService.registerServices();
  getIt.registerSingleton<NavigationService>(NavigationService(),
      signalsReady: true);
  runApp(MyFirstApp());
}

class MyFirstApp extends StatefulWidget {
  @override
  _MyFirstAppState createState() => _MyFirstAppState();
}

class _MyFirstAppState extends State<MyFirstApp> {
  @override
  void initState() {
    getIt.isReady<NavigationService>().then((_) => update());

    super.initState();
  }

  @override
  void dispose() {
    getIt<NavigationService>();
    super.dispose();
  }

  void update() => setState(() => {});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      navigatorKey: Get.key,
      theme: ThemeProvider.getTheme(),
      home: Shell(),
    );
  }
}
