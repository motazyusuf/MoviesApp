import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MovieTrailerShimmer extends StatelessWidget {
  const MovieTrailerShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        height: height / 4,
        color: Colors.white,
      ),
    );
  }
}
