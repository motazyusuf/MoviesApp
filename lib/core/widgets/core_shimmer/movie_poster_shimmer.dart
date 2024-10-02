import 'package:flutter/material.dart';
import 'package:movies_app/core/theme/color_palette.dart';
import 'package:shimmer/shimmer.dart';

class MoviePosterShimmer extends StatelessWidget {
  MoviePosterShimmer({super.key, this.height = 180, this.width = 120});

  double width;
  double height;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorPalette.bottomNavBarColor,
      highlightColor: ColorPalette.LighterBackgroudColor,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            6,
          ),
        ),
        width: width,
        height: height,
      ),
    );
  }
}
