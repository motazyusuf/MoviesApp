import 'package:flutter/material.dart';
import 'package:movies_app/watchlist/presentation/widgets/vertical_watchlist_item.dart';

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
    List<Map<String, String>> items = [
      {"Dora": "assets/images/movieCover.png"},
      {"Deadpool": "assets/images/movieCover2.png"},
      {"Narcos": "assets/images/movieCover3.png"},
    ];
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
      body: ListView.separated(
        scrollDirection: Axis.vertical,
        separatorBuilder: (context, index) => Divider(
          height: 20,
          color: ColorPalette.appBarItemsColor,
        ),
        itemBuilder: (context, index) {
          return VerticalWatchlistItem(
              index: index, items: items, isBookmarked: isBookmarked);
        },
        itemCount: items.length,
      ),
    );
  }
}
