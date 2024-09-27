import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/home/presentation/manager/home_cubit.dart';

import '../browse/presentation/pages/browse_view.dart';
import '../home/presentation/pages/home_view.dart';
import '../search/presentation/manager/search_cubit.dart';
import '../search/presentation/pages/search_view.dart';
import '../watchlist/presentation/pages/watchlist_view.dart';
import 'theme/color_palette.dart';

class LayoutView extends StatefulWidget {
  LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int selectedIndex = 0;
  List<Widget> layouts = [
    BlocProvider(create: (context) => HomeCubit(), child: HomeView()),
    BlocProvider(
      create: (context) => SearchCubit(""),
      child: SearchView(),
    ),
    const BrowseView(),
    const WatchlistView(),
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: ColorPalette.bottomNavBarColor,
      ),
      child: Scaffold(
        backgroundColor: ColorPalette.backgroudColor,
        body: layouts[selectedIndex],
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black,
                blurRadius: 10,
              ),
            ],
          ),
          child: BottomNavigationBar(
            unselectedItemColor: Color(0xFF928B8B),
            type: BottomNavigationBarType.fixed,
            fixedColor: ColorPalette.accentColor,
            backgroundColor: ColorPalette.bottomNavBarColor,
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                label: "Home",
                icon: ImageIcon(AssetImage("assets/icons/home_icon.png")),
              ),
              BottomNavigationBarItem(
                label: "Search",
                icon: ImageIcon(AssetImage("assets/icons/search_icon.png")),
              ),
              BottomNavigationBarItem(
                label: "Browse",
                icon: ImageIcon(AssetImage("assets/icons/browse_icon.png")),
              ),
              BottomNavigationBarItem(
                label: "Watchlist",
                icon: ImageIcon(AssetImage("assets/icons/watchlist_icon.png")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
