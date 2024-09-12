import 'package:flutter/material.dart';

class GenreItem extends StatelessWidget {
  const GenreItem({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/genre.jpg"))),
        ),
        Text("Genre",
            style: theme.textTheme.titleLarge!
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold))
      ],
    );
  }
}
