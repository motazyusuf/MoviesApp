import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/home/presentation/widgets/new_releases.dart';
import 'package:movies_app/home/presentation/widgets/topPage_movie.dart';

import '../../../core/widgets/recommendedList/recommended_section.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    var theme = Theme.of(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CarouselSlider(
              items: const [
                TopPageMovie(),
                TopPageMovie(),
                TopPageMovie(),
                TopPageMovie(),
              ],
              options: CarouselOptions(
                  pauseAutoPlayOnTouch: true,
                  height: 270,
                  viewportFraction: 1,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 6))),
          // const TopPageMovie(),
          const SizedBox(
            height: 20,
          ),
          const NewReleases(),
          const SizedBox(
            height: 20,
          ),
          RecommendedSection()
        ],
      ),
    );
  }
}
