import 'package:flutter/material.dart';
import 'package:movies_app/core/widgets/rating.dart';

import '../../../../core/configurations/pages_routes.dart';
import '../../movie_entities/movie_entity.dart';
import '../movie_poster.dart';

class RecommendedItem extends StatelessWidget {
  RecommendedItem({super.key, required this.movie});

  MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return InkWell(
      onTap: () => Navigator.pushNamed(context, PagesRoutes.movieDetailsView,
          arguments: movie),
      child: Container(
        width: 97,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.6),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(-4, -3), // changes position of shadow
              ),
            ],
            color: Color(0xFF343534),
            borderRadius: BorderRadius.circular(
              7,
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MoviePoster(
              height: 100,
              movie: movie,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Rating(
                    rating: num.parse(movie.movie_vote_average!.toStringAsFixed(1))
                            .toString(),
                  ),
                  Text(
                    movie.movieTitle!,
                    style: theme.textTheme.bodyMedium,
                    maxLines: 1,
                  ),
                  Text(
                    movie.movie_release_date!,
                    style: theme.textTheme.bodySmall,
                    maxLines: 1,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//
// MoviePoster(
// width: 96.8,
// height: 127.74,
// ),
