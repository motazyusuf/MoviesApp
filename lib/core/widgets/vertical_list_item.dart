import 'package:flutter/material.dart';
import 'package:movies_app/core/constants/constants.dart';
import 'package:movies_app/core/widgets/rating.dart';
import 'package:overflow_text_animated/overflow_text_animated.dart';

import '../../../core/configurations/pages_routes.dart';
import '../movie_entities/movie_entity.dart';

class VerticalListItem extends StatelessWidget {
  VerticalListItem({
    super.key,
    required this.movie,
  });

  MovieEntity movie;

  @override
  Widget build(BuildContext context) {
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
              SizedBox(
                width: 170,
                child: OverflowTextAnimated(
                  animation: OverFlowTextAnimations.scrollOpposite,
                  text: movie.movieTitle!,
                  animateDuration: Duration(milliseconds: 1500),
                  delay: Duration(milliseconds: 500),
                  style: theme.textTheme.bodyLarge,
                ),
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
