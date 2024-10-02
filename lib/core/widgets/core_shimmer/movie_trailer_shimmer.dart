import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../theme/color_palette.dart';

class MovieTrailerShimmer extends StatelessWidget {
  const MovieTrailerShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    return Shimmer.fromColors(
      baseColor: ColorPalette.bottomNavBarColor,
      highlightColor: ColorPalette.LighterBackgroudColor,
      child: Container(
        height: height / 4,
        color: Colors.white,
      ),
    );
  }
}
