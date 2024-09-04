import 'package:flutter/material.dart';

import '../../../core/configurations/pages_routes.dart';
import '../../../core/theme/color_palette.dart';
import 'movie_poster.dart';

class NewReleases extends StatelessWidget {
  const NewReleases({super.key});

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
                              context, PagesRoutes.movieDetailsView),
                          child: MoviePoster(
                            width: 96.8,
                            height: 127.74,
                          ),
                        ),
                    itemCount: 200)),
          ],
        ),
      ),
    );
  }
}
