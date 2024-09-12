import 'package:flutter/material.dart';
import 'package:movies_app/core/configurations/pages_routes.dart';

import '../../browse/presentation/pages/genre_details_view.dart';
import '../../home/presentation/pages/movie_details_view.dart';
import '../../splash/splash_view.dart';
import '../layout_view.dart';

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

      case PagesRoutes.genreDetailsView:
        return MaterialPageRoute(
            builder: (context) => GenreDetailsView(), settings: settings);

      default:
        return MaterialPageRoute(
            builder: (context) => SplashView(), settings: settings);
    }
  }
}
