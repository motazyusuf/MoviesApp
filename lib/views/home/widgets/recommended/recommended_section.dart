import 'package:flutter/material.dart';
import 'package:movies_app/views/home/widgets/recommended/recommended_item.dart';

import '../../../../core/theme/color_palette.dart';

class RecommendedSection extends StatelessWidget {
  RecommendedSection({super.key, this.label = "Recommended"});

  String label;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
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
                  itemBuilder: (context, index) => RecommendedItem(),
                  itemCount: 200)),
        ],
      ),
    );
  }
}
