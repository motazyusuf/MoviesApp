import 'package:flutter/material.dart';
import 'package:movies_app/core/theme/color_palette.dart';
import 'package:movies_app/search/presentation/widgets/searched_item.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  List<Map<String, String>> searchResults = [];
  final searchBarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var theme = Theme.of(context);
    List<Map<String, String>> items = [
      {"Dora": "assets/images/movieCover.png"},
      {"Deadpool": "assets/images/movieCover2.png"},
      {"Narcos": "assets/images/movieCover3.png"},
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 10, left: 10),
        child: Column(
          children: [
            TextFormField(
              controller: searchBarController,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                prefixIconColor: Colors.white,
                prefixIcon:
                    ImageIcon(AssetImage("assets/icons/search_icon.png")),
                isDense: true,
                filled: true,
                fillColor: ColorPalette.searchBarColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
              onChanged: (searchBarController) {
                if (!searchBarController.isEmpty) {
                  searchResults = items
                      .where((item) => item.keys
                          .toString()
                          .toLowerCase()
                          .contains(searchBarController.toLowerCase()))
                      .toList();
                } else
                  searchResults = [];
                setState(() {});
              },
            ),
            searchResults.isEmpty
                ? Column(children: [
                    SizedBox(
                      height: height / 4,
                    ),
                    Image.asset("assets/images/noMovies.png")
                  ])
                : Expanded(
                    child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      separatorBuilder: (context, index) => Divider(
                        height: 20,
                        color: ColorPalette.appBarItemsColor,
                      ),
                      itemBuilder: (context, index) {
                        return SearchedItems(
                            searchResults: searchResults, index: index);
                      },
                      itemCount: searchResults.length,
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
