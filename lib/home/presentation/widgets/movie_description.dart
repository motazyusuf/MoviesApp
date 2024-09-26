import 'package:flutter/material.dart';
import 'package:movies_app/home/domain/entities/movie_entity.dart';

import '../../../core/widgets/rating.dart';

class MovieDescription extends StatelessWidget {
  MovieDescription({super.key, required this.movie});

  MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 195,
            child: Text(movie.overview!),
          ),
          const SizedBox(height: 5),
          Rating(
            rating: num.parse(movie.popular_vote_average!.toStringAsFixed(1))
                .toString(),
            ratingTextSize: 15,
            iconSize: 20,
          )
        ],
      ),
    );
  }
}
