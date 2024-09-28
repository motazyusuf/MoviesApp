import 'package:flutter/material.dart';
import 'package:movies_app/browse/domain/entities/genre_entity.dart';

import '../../../core/configurations/pages_routes.dart';

class GenreItem extends StatelessWidget {
  GenreItem({super.key, required this.genre});

  GenreEntity genre;

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
                    opacity: 0.7,
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/img_1.png"))),
          ),
          Text(genre.genreName,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleLarge!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 25))
        ],
      ),
    );
  }
}
