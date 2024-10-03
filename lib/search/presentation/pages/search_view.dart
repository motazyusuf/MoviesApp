import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/theme/color_palette.dart';
import 'package:movies_app/core/widgets/vertical_list_item.dart';

import '../../../core/movie_entities/movie_entity.dart';
import '../manager/search_cubit.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  List<MovieEntity> searchResults = [];
  final searchBarController = TextEditingController();
  final FocusNode searchBarFocus = FocusNode();

  // @override
  // // void initState() {
  // //   BlocProvider.of<SearchCubit>(context).searchMovies();
  // //   // TODO: implement initState
  // //   super.initState();
  // // }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;

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
              onChanged: (searchBarController) async {
                if (searchBarController.isNotEmpty) {
                  var cubit = SearchCubit(searchBarController);
                  await cubit.searchMovies();
                  searchResults = cubit.searchMoviesList
                      .where((item) => item.movieTitle!
                          .toLowerCase()
                          .contains(searchBarController.toLowerCase()))
                      .toList();
                  print("result of Search list ->> $searchResults");
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
                : BlocBuilder<SearchCubit, SearchState>(
                    builder: (context, state) {
                      return Expanded(
                        child: ListView.separated(
                          scrollDirection: Axis.vertical,
                          separatorBuilder: (context, index) => Divider(
                            height: 20,
                            color: ColorPalette.appBarItemsColor,
                          ),
                          itemBuilder: (context, index) {
                            return VerticalListItem(
                              movie: searchResults[index],
                            );
                          },
                          itemCount: searchResults.length,
                        ),
                      );
                    },
                  )
          ],
        ),
      ),
    );
  }
}
