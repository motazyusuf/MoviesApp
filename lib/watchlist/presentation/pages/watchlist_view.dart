import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/core/services/firebase_utils.dart';
import 'package:movies_app/core/widgets/core_shimmer/vertical_list_item_shimmer.dart';
import 'package:movies_app/watchlist/presentation/widgets/vertical_watchlist_item.dart';

import '../../../core/movie_entities/movie_entity.dart';
import '../../../core/theme/color_palette.dart';

class WatchlistView extends StatefulWidget {
  const WatchlistView({super.key});

  @override
  State<WatchlistView> createState() => _WatchlistViewState();
}

class _WatchlistViewState extends State<WatchlistView> {
  bool isBookmarked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(100, 75),
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: AppBar(
            centerTitle: true,
            surfaceTintColor: Colors.transparent,
            title: Text("Watchlist"),
            backgroundColor: ColorPalette.backgroudColor,
          ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: StreamBuilder<QuerySnapshot<MovieEntity>>(
            stream: FirebaseUtils.getDataStream(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Center(
                  child: Text("Something went wrong!"),
                );
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
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

              List<MovieEntity> movies = snapshot.data!.docs
                  .map((document) => document.data())
                  .toList();

              return ListView.separated(
                scrollDirection: Axis.vertical,
                separatorBuilder: (context, index) => Divider(
                  height: 20,
                  color: ColorPalette.appBarItemsColor,
                ),
                itemBuilder: (context, index) {
                  return VerticalWatchlistItem(
                      index: index, items: movies, isBookmarked: isBookmarked);
                },
                itemCount: movies.length,
              );
            },
          )),
    );
  }
}
