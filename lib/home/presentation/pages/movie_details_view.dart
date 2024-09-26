import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movies_app/home/presentation/widgets/movie_description.dart';

import '../../../core/theme/color_palette.dart';
import '../../../core/widgets/recommendedList/recommended_section.dart';

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
              //MovieTrailer(),

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
                        // MoviePoster(),
                        MovieDescription(),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              RecommendedSection(
                label: "More Like This",
              )
            ],
          ),
        ));
  }
}
