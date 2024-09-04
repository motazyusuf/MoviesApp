import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movies_app/views/home/movie_details/widgets/movie_description.dart';
import 'package:movies_app/views/home/widgets/movie_poster.dart';
import 'package:movies_app/views/home/widgets/movie_trailer.dart';
import 'package:movies_app/views/home/widgets/recommended/recommended_section.dart';

import '../../../core/theme/color_palette.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return AnnotatedRegion(
        value: SystemUiOverlayStyle(
          systemNavigationBarColor: ColorPalette.backgroudColor,
        ),
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Dora and the lost city of gold",
              style: theme.textTheme.titleLarge,
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MovieTrailer(),

              // Body
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Movie Title
                    Text("Dora and the lost city of gold",
                        style: theme.textTheme.titleMedium),

                    // Movie Release-PG-Duration
                    Text(
                      "2019  PG-13  2h 7m",
                      style: theme.textTheme.bodyMedium,
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    // Movie Details
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MoviePoster(),
                        MovieDescription(),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RecommendedSection(
                      label: "More Like This",
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
