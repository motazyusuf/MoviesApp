import 'package:flutter/material.dart';
import 'package:movies_app/core/theme/color_palette.dart';

class Rating extends StatelessWidget {
  Rating({super.key, this.ratingTextSize = 10, this.iconSize = 13});

  double ratingTextSize;
  double iconSize;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          size: iconSize,
          Icons.star_purple500_outlined,
          color: ColorPalette.accentColor,
        ),
        SizedBox(
          width: 3,
        ),
        Text(
          "7.7",
          style: theme.textTheme.bodyMedium!.copyWith(fontSize: ratingTextSize),
        ),
      ],
    );
  }
}
