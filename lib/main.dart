import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'core/configurations/app_router.dart';
import 'core/configurations/pages_routes.dart';
import 'core/services/bloc_observer.dart';
import 'core/theme/application_theme_manager.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ApplicationThemeManager.theme,
        initialRoute: PagesRoutes.initial,
        onGenerateRoute: AppRouter.onGenerateRoute);
  }
}

