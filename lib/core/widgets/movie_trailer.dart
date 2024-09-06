import 'package:flutter/material.dart';

class MovieTrailer extends StatelessWidget {
  const MovieTrailer({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    var theme = Theme.of(context);

    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          height: height / 4,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/movieCover.png"),
            ),
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              size: 60,
              Icons.play_circle_outlined,
              color: Colors.white,
            ))
      ],
    );
  }
}
