import 'package:flutter/material.dart';

import '../../../core/configurations/pages_routes.dart';
import '../../../core/movie_entities/movie_entity.dart';
import '../../../core/theme/color_palette.dart';
import '../../../core/widgets/movie_poster.dart';

class NewReleases extends StatelessWidget {
  NewReleases({super.key, required this.moviesList});

  List<MovieEntity> moviesList;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      height: 180,
      color: ColorPalette.LighterBackgroudColor,
      child: Container(
        margin: EdgeInsets.only(bottom: 10, left: 15, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New Releases",
              style: theme.textTheme.titleSmall,
            ),
            const SizedBox(
              height: 9,
            ),
            Expanded(
                child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 10,
                        ),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => InkWell(
                          onTap: () => Navigator.pushNamed(
                              context, PagesRoutes.movieDetailsView,
                              arguments: moviesList[index]),
                          child: MoviePoster(
                            movie: moviesList[index],
                            width: 96.8,
                            height: 127.74,
                          ),
                        ),
                    itemCount: moviesList.length)),
          ],
        ),
      ),
    );
  }
}
