import 'package:flutter/material.dart';
import 'package:movies_app/core/widgets/rating.dart';

import '../../../../core/configurations/pages_routes.dart';
import '../../../../core/widgets/movie_poster.dart';

class RecommendedItem extends StatelessWidget {
  const RecommendedItem({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return InkWell(
      onTap: () => Navigator.pushNamed(context, PagesRoutes.movieDetailsView),
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
            MoviePoster(height: 100),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Rating(),
                  Text(
                    "Dora and the lost city of gold",
                    style: theme.textTheme.bodyMedium,
                    maxLines: 1,
                  ),
                  Text(
                    "2019  PG-13  2h 7m",
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
