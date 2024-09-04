import 'package:flutter/material.dart';
import 'package:movies_app/core/configurations/pages_routes.dart';

import '../../views/home/movie_details/movie_details_view.dart';
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

      case PagesRoutes.movieDetailsView:
        return MaterialPageRoute(
            builder: (context) => MovieDetailsView(), settings: settings);

      default:
        return MaterialPageRoute(
            builder: (context) => SplashView(), settings: settings);
    }
  }
}
