import 'package:flutter/material.dart';

class MoviePoster extends StatelessWidget {
  MoviePoster({super.key, this.height = 180, this.width = 120});

  double height, width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/movieCover.png"),
            ),
          ),
        ),
        InkWell(
            onTap: () {},
            child: Image.asset(
              "assets/icons/add_to_bookmark.png",
            )),
      ],
    );
  }
}
