import 'package:flutter/material.dart';

import '../../../core/configurations/pages_routes.dart';

class VerticalListItem extends StatelessWidget {
  VerticalListItem(
      {super.key, required this.searchResults, required this.index});

  List searchResults;
  int index;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var theme = Theme.of(context);

    return InkWell(
      onTap: () => Navigator.pushNamed(context, PagesRoutes.movieDetailsView),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 89,
            width: 140,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(searchResults[index].values.first))),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                searchResults[index].keys.first,
                style: theme.textTheme.bodyLarge,
              ),
              Text("Year"),
              Text("Cast")
            ],
          )
        ],
      ),
    );
  }
}
