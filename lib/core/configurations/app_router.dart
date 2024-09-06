import 'package:flutter/material.dart';
import 'package:movies_app/core/configurations/pages_routes.dart';

import '../../views/main_layout/layout_view.dart';
import '../../views/splash/splash_view.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PagesRoutes.initial:
        return MaterialPageRoute(
            builder: (context) => SplashView(), settings: settings);

      case PagesRoutes.layoutView:
        return MaterialPageRoute(
            builder: (context) => LayoutView(), settings: settings);

      default:
        return MaterialPageRoute(
            builder: (context) => SplashView(), settings: settings);
    }
  }
}
