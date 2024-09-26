import 'package:flutter/material.dart';
import 'package:movies_app/core/constants/constants.dart';
import 'package:movies_app/home/domain/entities/movie_entity.dart';

class MoviePoster extends StatefulWidget {
  MoviePoster(
      {super.key, this.height = 180, this.width = 120, required this.movie});

  double height, width;
  MovieEntity movie;

  @override
  State<MoviePoster> createState() => _MoviePosterState();
}

class _MoviePosterState extends State<MoviePoster> {
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              6,
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "${Constants.imageDomain}${widget.movie.popular_poster_path}"),
            ),
          ),
        ),
        InkWell(
            onTap: () {
              setState(() {
                isBookmarked = !isBookmarked;
              });
            },
            child: isBookmarked
                ? Image.asset("assets/icons/bookmarked.png")
                : Image.asset(
                    "assets/icons/add_to_bookmark.png",
                  )),
      ],
    );
  }
}
