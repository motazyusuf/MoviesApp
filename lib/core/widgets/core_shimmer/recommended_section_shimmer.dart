import 'package:flutter/material.dart';
import 'package:movies_app/core/widgets/core_shimmer/recommended_item_shimmer.dart';

import '../../theme/color_palette.dart';

class RecommendedSectionShimmer extends StatelessWidget {
  const RecommendedSectionShimmer({super.key});

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
            "Recommended",
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
              itemBuilder: (context, index) => RecommendedItemShimmer(),
              itemCount: 100,
            ),
          )
        ],
      ),
    );
  }
}
