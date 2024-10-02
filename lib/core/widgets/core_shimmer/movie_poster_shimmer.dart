import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MoviePosterShimmer extends StatelessWidget {
  MoviePosterShimmer({super.key, this.height = 180, this.width = 120});

  double width;
  double height;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
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
