import 'package:flutter/material.dart';
import 'package:movies_app/views/home/widgets/topPage_movie.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    var theme = Theme.of(context);
    return Scaffold(
      body: Column(
        children: [TopPageMovie()],
      ),
    );
  }
}
