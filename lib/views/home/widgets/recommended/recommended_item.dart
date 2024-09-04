import 'package:flutter/material.dart';

import '../../../../core/configurations/pages_routes.dart';
import '../movie_poster.dart';

class RecommendedItem extends StatelessWidget {
  const RecommendedItem({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return InkWell(
      onTap: () => Navigator.pushNamed(context, PagesRoutes.movieDetailsView),
      child: Container(
        height: 184,
      width: 97,
      decoration: BoxDecoration(color: Color(0xFF343534)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MoviePoster(height: 100),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(height: 15, "assets/icons/ratingStar.png"),
                    Text(
                      "7.7",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
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
