import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/theme/color_palette.dart';

class GenreItemShimmer extends StatelessWidget {
  const GenreItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorPalette.bottomNavBarColor,
      highlightColor: ColorPalette.LighterBackgroudColor,
      child: Container(
        color: ColorPalette.bottomNavBarColor,
      ),
    );
  }
}
