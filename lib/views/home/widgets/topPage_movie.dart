import 'package:flutter/material.dart';

class TopPageMovie extends StatelessWidget {
  const TopPageMovie({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    var theme = Theme.of(context);
    return SizedBox(
      height: height / 2.8,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: [
                  // Trailer Video
                  Stack(
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
                  ),

                  // Title and Duration
                  Padding(
                    padding: EdgeInsets.only(left: width / 3, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dora and the lost city of gold",
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "2019  PG-13  2h 7m",
                          style: theme.textTheme.bodyMedium,
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
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Container(
                  width: 120,
                  height: 180,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/movieCover.png"),
                    ),
                  ),
                ),
                Positioned(
                  left: -10,
                  bottom: 135,
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/icons/add_to_bookmark.png")),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
