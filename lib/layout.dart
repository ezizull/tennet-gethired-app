import 'package:flutter/material.dart';
import 'package:gethired/utils/pages/local_navigator.dart';
import 'package:gethired/utils/pages/reponsiveness.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  SiteLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      body: ResponsiveWidget(
          largeScreen: const SizedBox(),
          smallScreen: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: localNavigator(),
          )),
    );
  }
}
