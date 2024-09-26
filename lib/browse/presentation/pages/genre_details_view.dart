import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/theme/color_palette.dart';

class GenreDetailsView extends StatelessWidget {
  GenreDetailsView({super.key});

  List<Map<String, String>> items = [
    {"Dora": "assets/images/movieCover.png"},
    {"Deadpool": "assets/images/movieCover2.png"},
    {"Narcos": "assets/images/movieCover3.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
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
              title: Text("Genre"),
              backgroundColor: ColorPalette.backgroudColor,
            ),
          ),
        ),
        body: Expanded(
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            separatorBuilder: (context, index) => Divider(
              height: 20,
              color: ColorPalette.appBarItemsColor,
            ),
            itemBuilder: (context, index) {
              // return VerticalListItem(searchResults: items, index: index);
            },
            itemCount: items.length,
          ),
        ),
      ),
    );
  }
}
