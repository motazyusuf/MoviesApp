import 'package:flutter/material.dart';
import 'package:movies_app/core/widgets/movie_poster.dart';

import '../../../core/configurations/pages_routes.dart';
import '../../../core/widgets/movie_trailer.dart';

class TopPageMovie extends StatelessWidget {
  const TopPageMovie({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    var theme = Theme.of(context);
    return SizedBox(
      height: height / 2.8,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: [
                  // Trailer Video
                  const MovieTrailer(),
                  // Title and Duration
                  Padding(
                    padding: EdgeInsets.only(left: width / 3, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dora and the lost city of gold",
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "2019  PG-13  2h 7m",
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
            child: InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, PagesRoutes.movieDetailsView),
                child: MoviePoster()),
          )
        ],
      ),
    );
  }
}
