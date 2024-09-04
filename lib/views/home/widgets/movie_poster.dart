import 'package:flutter/material.dart';

class MoviePoster extends StatefulWidget {
  MoviePoster({super.key, this.height = 180, this.width = 120});

  double height, width;

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
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/movieCover.png"),
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
