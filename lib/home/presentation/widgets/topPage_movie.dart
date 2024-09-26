import 'package:flutter/material.dart';
import 'package:movies_app/core/widgets/movie_poster.dart';
import 'package:movies_app/home/domain/entities/movie_entity.dart';

import '../../../core/configurations/pages_routes.dart';
import '../../../core/widgets/movie_trailer.dart';

class TopPageMovie extends StatelessWidget {
  TopPageMovie({super.key, required this.movie});

  MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    var theme = Theme.of(context);
    return InkWell(
      onTap: () => Navigator.pushNamed(context, PagesRoutes.movieDetailsView,
          arguments: movie),
      child: SizedBox(
        height: height / 2.8,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Trailer Video
                    MovieTrailer(coverPath: movie.popular_backdrop_path!),

                    // Title and release
                    Padding(
                      padding: EdgeInsets.only(left: width / 2.39, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            movie.popularTitle!,
                            style: theme.textTheme.titleSmall,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            movie.popular_release_date!,
                            style: theme.textTheme.bodyMedium,
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),

            // Movie Poster
            Positioned(
              top: 100,
              left: 20,
              child: MoviePoster(movie: movie),
            )
          ],
        ),
      ),
    );
  }
}
