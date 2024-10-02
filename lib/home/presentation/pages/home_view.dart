import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/home/presentation/manager/home_cubit.dart';
import 'package:movies_app/home/presentation/widgets/new_releases.dart';
import 'package:movies_app/home/presentation/widgets/shimmer_widgets/new_releases_shimmer.dart';
import 'package:movies_app/home/presentation/widgets/shimmer_widgets/topPage_movie_shimmer.dart';
import 'package:movies_app/home/presentation/widgets/topPage_movie.dart';

import '../../../core/widgets/recommendedList/recommended_section.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<HomeCubit>(context).popularMovies();
    BlocProvider.of<HomeCubit>(context).recommendedMovies();
    BlocProvider.of<HomeCubit>(context).newReleasedMovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var cubit = HomeCubit.get(context);
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeDataLoading) {
          return Scaffold(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TopPageMovieShimmer(),
                // const TopPageMovie(),
                const SizedBox(
                  height: 20,
                ),
                NewReleasesShimmer(),
                const SizedBox(
                  height: 20,
                ),
                RecommendedSection(
                  moviesList: cubit.recommendedMoviesList,
                )
              ],
            ),
          );
        }
        return Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CarouselSlider(
                  items: cubit.popularMoviesList
                      .map((movie) => TopPageMovie(movie: movie))
                      .toList(),
                  options: CarouselOptions(
                      pauseAutoPlayOnManualNavigate: true,
                      pauseAutoPlayInFiniteScroll: true,
                      height: 270,
                      viewportFraction: 1,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 6))),
              const SizedBox(
                height: 20,
              ),
              NewReleases(moviesList: cubit.newReleaseMoviesList),
              const SizedBox(
                height: 20,
              ),
              RecommendedSection(
                moviesList: cubit.recommendedMoviesList,
              )
            ],
          ),
        );
      },
    );
  }
}
