import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'core/configurations/app_router.dart';
import 'core/configurations/pages_routes.dart';
import 'core/services/bloc_observer.dart';
import 'core/theme/application_theme_manager.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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

