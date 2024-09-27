import 'package:flutter/material.dart';

class VerticalWatchlistItem extends StatefulWidget {
  VerticalWatchlistItem(
      {super.key,
      required this.items,
      required this.isBookmarked,
      required this.index});

  List items;
  bool isBookmarked;
  int index;

  @override
  State<VerticalWatchlistItem> createState() => _VerticalWatchlistItemState();
}

class _VerticalWatchlistItemState extends State<VerticalWatchlistItem> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // VerticalListItem(searchResults: widget.items, index: widget.index),
        InkWell(
            onTap: () {
              setState(() {
                widget.isBookmarked = !widget.isBookmarked;
              });
            },
            child: widget.isBookmarked
                ? Image.asset("assets/icons/bookmarked.png")
                : Image.asset(
                    "assets/icons/add_to_bookmark.png",
                  ))
      ],
    );
    ;
  }
}
