import 'package:flutter/material.dart';
import 'package:movies_app/core/theme/color_palette.dart';
import 'package:movies_app/core/widgets/vertical_list_item.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  List<Map<String, String>> searchResults = [];
  final searchBarController = TextEditingController();
  final FocusNode searchBarFocus = FocusNode();

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
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Column(
          children: [
            TextFormField(
              focusNode: searchBarFocus,
              controller: searchBarController,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                suffixIcon: searchBarController.text.isEmpty
                    ? Text("")
                    : IconButton(
                        onPressed: () {
                          searchBarController.text = "";
                          searchResults = [];
                          searchBarFocus.unfocus();
                          setState(() {});
                        },
                        icon: Icon(Icons.close)),
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
                if (searchBarController.isNotEmpty) {
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
                        return VerticalListItem(
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
