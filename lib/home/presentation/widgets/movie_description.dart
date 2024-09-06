import 'package:flutter/material.dart';

import '../../../core/theme/color_palette.dart';
import '../../../core/widgets/rating.dart';

class MovieDescription extends StatelessWidget {
  const MovieDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // GridView.builder(
          //   itemCount: 4,
          //   gridDelegate:
          //   const SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 3,
          //       mainAxisSpacing: 15,
          //       crossAxisSpacing: 15),
          //   itemBuilder: (context, index) {
          //     return Container(width: 65, height: 25,
          //      child: Text("Genre"),
          //     );
          //   },
          // )

          Row(
            children: [
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: ColorPalette.LighterBackgroudColor)),
                width: 60,
                height: 25,
                child: Text(
                  "Genre",
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: ColorPalette.LighterBackgroudColor)),
                width: 60,
                height: 25,
                child: Text(
                  "Genre",
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: ColorPalette.LighterBackgroudColor)),
                width: 60,
                height: 25,
                child: Text(
                  "Genre",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: ColorPalette.LighterBackgroudColor)),
                width: 60,
                height: 25,
                child: Text(
                  "Genre",
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: ColorPalette.LighterBackgroudColor)),
                width: 60,
                height: 25,
                child: Text(
                  "Genre",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Description
          const SizedBox(
            width: 195,
            child: Text("Having spent most of "
                "her life exploring "
                "the jungle, nothing could"
                " prepare Dora for her most "
                "dangerous adventure yet — "
                "high school. "),
          ),
          const SizedBox(height: 20),

          Rating(
            ratingTextSize: 15,
            iconSize: 20,
          )
        ],
      ),
    );
  }
}
