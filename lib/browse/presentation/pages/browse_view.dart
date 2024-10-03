import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/browse/presentation/manager/genre_cubit.dart';
import 'package:movies_app/browse/presentation/widgets/genre_item.dart';
import 'package:movies_app/browse/presentation/widgets/shimmer_widgets/genre_item_shimmer.dart';
import 'package:movies_app/core/theme/color_palette.dart';

class BrowseView extends StatelessWidget {
  BrowseView({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = GenreCubit.get(context);
    cubit.movieGenres();
    print("Genres ====> ${cubit.genresList}");
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(100, 75),
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: AppBar(
            centerTitle: true,
            surfaceTintColor: Colors.transparent,
            title: Text("Browse Categories"),
            backgroundColor: ColorPalette.backgroudColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: BlocBuilder<GenreCubit, GenreState>(
          builder: (context, state) {
            if (state is GenresDataLoading) {
              return GridView.builder(
                itemCount: 100,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.7,
                    crossAxisCount: 2,
                    mainAxisSpacing: 25,
                    crossAxisSpacing: 20),
                itemBuilder: (context, index) => GenreItemShimmer(),
              );
              ;
            }
            return GridView.builder(
              itemCount: cubit.genresList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.7,
                  crossAxisCount: 2,
                  mainAxisSpacing: 25,
                  crossAxisSpacing: 20),
              itemBuilder: (context, index) =>
                  GenreItem(genre: cubit.genresList[index]),
            );
          },
        ),
      ),
    );
  }
}
