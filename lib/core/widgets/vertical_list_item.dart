import 'package:flutter/material.dart';
import 'package:movies_app/core/constants/constants.dart';
import 'package:movies_app/core/widgets/rating.dart';

import '../../../core/configurations/pages_routes.dart';
import '../entities/movie_entity.dart';

class VerticalListItem extends StatelessWidget {
  VerticalListItem({
    super.key,
    required this.movie,
  });

  MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var theme = Theme.of(context);

    return InkWell(
      onTap: () => Navigator.pushNamed(context, PagesRoutes.movieDetailsView,
          arguments: movie),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 89,
            width: 140,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "${Constants.imageDomain}${movie.movie_backdrop_path}"))),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movie.movieTitle!,
                style: theme.textTheme.bodyLarge,
              ),
              Text(movie.movie_release_date!),
              Rating(
                  rating:
                      num.parse(movie.movie_vote_average!.toStringAsFixed(1))
                          .toString())
            ],
          )
        ],
      ),
    );
  }
}
