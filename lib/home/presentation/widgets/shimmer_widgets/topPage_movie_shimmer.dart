import 'package:flutter/material.dart';
import 'package:movies_app/core/widgets/core_shimmer/movie_poster_shimmer.dart';
import 'package:movies_app/core/widgets/core_shimmer/movie_trailer_shimmer.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/theme/color_palette.dart';

class TopPageMovieShimmer extends StatelessWidget {
  const TopPageMovieShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      height: height / 2.8,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Trailer Video
                  MovieTrailerShimmer(),

                  // Title and release
                  Padding(
                    padding: EdgeInsets.only(left: width / 2.39, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Shimmer.fromColors(
                          baseColor: ColorPalette.bottomNavBarColor,
                          highlightColor: ColorPalette.LighterBackgroudColor,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                6,
                              ),
                            ),
                            height: 10,
                            width: 100,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Shimmer.fromColors(
                          baseColor: ColorPalette.bottomNavBarColor,
                          highlightColor: ColorPalette.LighterBackgroudColor,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                6,
                              ),
                            ),
                            height: 7,
                            width: 60,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),

          // Movie Poster
          Positioned(
            top: 100,
            left: 20,
            child: MoviePosterShimmer(),
          )
        ],
      ),
    );
  }
}
