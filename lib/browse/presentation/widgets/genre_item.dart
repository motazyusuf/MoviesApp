import 'package:flutter/material.dart';

import '../../../core/configurations/pages_routes.dart';

class GenreItem extends StatelessWidget {
  const GenreItem({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return InkWell(
      onTap: () => Navigator.pushNamed(context, PagesRoutes.genreDetailsView),
      child: Stack(
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
      ),
    );
  }
}
