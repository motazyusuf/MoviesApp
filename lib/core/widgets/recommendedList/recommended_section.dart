import 'package:flutter/material.dart';
import 'package:movies_app/core/widgets/recommendedList/recommended_item.dart';

import '../../../../core/theme/color_palette.dart';
import '../../movie_entities/movie_entity.dart';

class RecommendedSection extends StatelessWidget {
  RecommendedSection(
      {super.key, this.label = "Recommended", required this.moviesList});

  String label;
  List<MovieEntity> moviesList;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
      height: 205,
      color: ColorPalette.LighterBackgroudColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
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
                  itemBuilder: (context, index) =>
                      RecommendedItem(movie: moviesList[index]),
                  itemCount: moviesList.length)),
        ],
      ),
    );
  }
}
