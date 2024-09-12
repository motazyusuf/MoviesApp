import 'package:flutter/material.dart';
import 'package:movies_app/browse/presentation/widgets/genre_item.dart';
import 'package:movies_app/core/theme/color_palette.dart';

class BrowseView extends StatelessWidget {
  const BrowseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(100, 75),
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: AppBar(
            surfaceTintColor: Colors.transparent,
            title: Text("Browse Category "),
            backgroundColor: ColorPalette.backgroudColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.7,
              crossAxisCount: 2,
              mainAxisSpacing: 30,
              crossAxisSpacing: 20),
          itemBuilder: (context, index) => GenreItem(),
        ),
      ),
    );
  }
}
