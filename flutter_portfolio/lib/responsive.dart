import 'package:flutter/material.dart';
import 'package:flutter_portfolio/mobile/home_page/home_mobile.dart';
import 'package:flutter_portfolio/web/home_page/home_web.dart';

class Responsive extends StatelessWidget {
  const Responsive({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 1000) {
          // TODO: turn this into HomePageMobile() when implemented
          // return const HomePageMobile();
          return const HomePageWeb();
        } else {
          return const HomePageWeb();
        }
      },
    );
  }
}
