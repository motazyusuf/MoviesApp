import 'package:flutter/material.dart';
import 'package:movies_app/core/theme/color_palette.dart';
import 'package:shimmer/shimmer.dart';

class VerticalListItemShimmer extends StatelessWidget {
  const VerticalListItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorPalette.bottomNavBarColor,
      highlightColor: ColorPalette.LighterBackgroudColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              height: 89, width: 140, color: ColorPalette.bottomNavBarColor),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: ColorPalette.bottomNavBarColor,
                  borderRadius: BorderRadius.circular(
                    6,
                  ),
                ),
                height: 10,
                width: 100,
              ),
              Container(
                decoration: BoxDecoration(
                  color: ColorPalette.bottomNavBarColor,
                  borderRadius: BorderRadius.circular(
                    6,
                  ),
                ),
                height: 10,
                width: 60,
              ),
              Container(
                decoration: BoxDecoration(
                  color: ColorPalette.bottomNavBarColor,
                  borderRadius: BorderRadius.circular(
                    6,
                  ),
                ),
                height: 10,
                width: 30,
              ),
            ],
          )
        ],
      ),
    );
  }
}
