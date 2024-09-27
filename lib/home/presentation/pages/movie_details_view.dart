import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movies_app/home/presentation/widgets/movie_description.dart';

import '../../../core/movie_entities/movie_entity.dart';
import '../../../core/theme/color_palette.dart';
import '../../../core/widgets/movie_poster.dart';
import '../../../core/widgets/movie_trailer.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final movie = ModalRoute.of(context)?.settings.arguments as MovieEntity;
    var theme = Theme.of(context);
    return AnnotatedRegion(
        value: SystemUiOverlayStyle(
          systemNavigationBarColor: ColorPalette.backgroudColor,
        ),
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              movie.movieTitle!,
              style: theme.textTheme.titleLarge,
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 170,
                child: MovieTrailer(
                  coverPath: movie.movie_backdrop_path!,
                ),
              ),

              // Body
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Movie Title
                    Text(movie.movieTitle!, style: theme.textTheme.titleMedium),

                    // Movie Release-PG-Duration
                    Text(
                      movie.movie_release_date!,
                      style: theme.textTheme.bodyMedium,
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    // Movie Details
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MoviePoster(
                          height: 220,
                          width: 130,
                          movie: movie,
                        ),
                        MovieDescription(movie: movie),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              // RecommendedSection(
              //   label: "More Like This",
              // )
            ],
          ),
        ));
  }
}
