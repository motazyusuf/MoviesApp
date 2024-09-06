import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/configurations/pages_routes.dart';
import '../../core/theme/color_palette.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(Duration(seconds: 6), () {
      Navigator.pushReplacementNamed(context, PagesRoutes.layoutView);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: ColorPalette.backgroudColor,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: ColorPalette.backgroudColor,
        ),
        child: Center(
            child: Image.asset(
                height: 150,
                width: 150,
                "assets/images/splashLogo.png")),
      ),
    );
  }
}
