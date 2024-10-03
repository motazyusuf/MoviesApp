import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/browse/domain/entities/genre_entity.dart';
import 'package:movies_app/browse/presentation/manager/genreMoviesManager/genre_movies_cubit.dart';
import 'package:movies_app/core/movie_entities/movie_entity.dart';
import 'package:movies_app/core/widgets/core_shimmer/vertical_list_item_shimmer.dart';

import '../../../core/theme/color_palette.dart';
import '../../../core/widgets/vertical_list_item.dart';

class GenreDetailsView extends StatelessWidget {
  GenreDetailsView({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    var genre = ModalRoute.of(context)?.settings.arguments as GenreEntity;
    var cubit = GenreMoviesCubit(genre.genreID.toString());
    cubit.genreMovies();
    return BlocProvider.value(
      value: cubit,
      child: AnnotatedRegion(
        value: SystemUiOverlayStyle(
            systemNavigationBarColor: ColorPalette.backgroudColor),
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(100, 75),
            child: Container(
              margin: EdgeInsets.only(top: 20),
              child: AppBar(
                centerTitle: true,
                surfaceTintColor: Colors.transparent,
                title: Text(genre.genreName),
                backgroundColor: ColorPalette.backgroudColor,
              ),
            ),
          ),
          body: BlocBuilder<GenreMoviesCubit, GenreMoviesState>(
            builder: (context, state) {
              if (state is GenreMoviesDataLoading) {
                return ListView.separated(
                  scrollDirection: Axis.vertical,
                  separatorBuilder: (context, index) => Divider(
                    height: 20,
                    color: ColorPalette.appBarItemsColor,
                  ),
                  itemBuilder: (context, index) {
                    return VerticalListItemShimmer();
                  },
                  itemCount: 100,
                );
              }
              return ListView.separated(
                scrollDirection: Axis.vertical,
                separatorBuilder: (context, index) => Divider(
                  height: 20,
                  color: ColorPalette.appBarItemsColor,
                ),
                itemBuilder: (context, index) {
                  return VerticalListItem(
                    movie: cubit.genreMoviesList[index],
                  );
                },
                itemCount: cubit.genreMoviesList.length,
              );
            },
          ),
        ),
      ),
    );
  }
}
