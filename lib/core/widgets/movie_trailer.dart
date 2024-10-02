import 'package:flutter/material.dart';
import 'package:movies_app/core/constants/constants.dart';

class MovieTrailer extends StatelessWidget {
  MovieTrailer({super.key, required this.coverPath});

  String coverPath;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var theme = Theme.of(context);

    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          height: height / 4,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage("${Constants.imageDomain}$coverPath"),
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
