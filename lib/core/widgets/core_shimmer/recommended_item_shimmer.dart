import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../theme/color_palette.dart';

class RecommendedItemShimmer extends StatelessWidget {
  const RecommendedItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorPalette.bottomNavBarColor,
      highlightColor: ColorPalette.LighterBackgroudColor,
      child: Container(
        width: 97,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.6),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(-4, -3), // changes position of shadow
              ),
            ],
            color: Color(0xFF343534),
            borderRadius: BorderRadius.circular(
              7,
            )),
      ),
    );
  }
}
