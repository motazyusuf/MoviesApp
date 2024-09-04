import 'package:flutter/material.dart';
import 'package:movies_app/core/theme/color_palette.dart';
import 'package:movies_app/views/home/widgets/movie_poster.dart';
import 'package:movies_app/views/home/widgets/new_releases.dart';
import 'package:movies_app/views/home/widgets/topPage_movie.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    var theme = Theme.of(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const TopPageMovie(),
          const SizedBox(
            height: 20,
          ),
          const NewReleases(),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 205,
            color: ColorPalette.LighterBackgroudColor,
            child: Container(
              margin: EdgeInsets.only(bottom: 10, left: 15, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Recommended",
                    style: theme.textTheme.titleSmall,
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Expanded(
                      child: ListView.separated(
                          separatorBuilder: (context, index) => SizedBox(
                                width: 10,
                              ),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => MoviePoster(
                                width: 96.8,
                                height: 127.74,
                              ),
                          itemCount: 200)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
