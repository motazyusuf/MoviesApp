import 'package:flutter/material.dart';

import '../../../core/theme/color_palette.dart';

class SearchedItems extends StatelessWidget {
  SearchedItems({super.key, required this.searchResults});

  List searchResults;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var theme = Theme.of(context);

    return Expanded(
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        separatorBuilder: (context, index) => Divider(
          height: 20,
          color: ColorPalette.appBarItemsColor,
        ),
        itemBuilder: (context, index) {
          return Row(
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
          );
        },
        itemCount: searchResults.length,
      ),
    );
  }
}
