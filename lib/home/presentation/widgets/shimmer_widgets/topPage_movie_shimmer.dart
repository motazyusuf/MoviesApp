import 'package:flutter/material.dart';
import 'package:movies_app/core/widgets/core_shimmer/movie_poster_shimmer.dart';
import 'package:movies_app/core/widgets/core_shimmer/movie_trailer_shimmer.dart';
import 'package:shimmer/shimmer.dart';

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
                        Shimmer.fromColors(
                          baseColor: Colors.grey.shade300,
                          highlightColor: Colors.grey.shade100,
                          child: Container(
                            height: 5,
                            width: 30,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Shimmer.fromColors(
                          baseColor: Colors.grey.shade300,
                          highlightColor: Colors.grey.shade100,
                          child: Container(
                            height: 5,
                            width: 15,
                            color: Colors.white,
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
