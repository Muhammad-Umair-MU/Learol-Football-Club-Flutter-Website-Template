// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:template1/NavBar/nav_bar.dart';
import 'TopSectionLandingPage.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/footballground.png"),
        ),
      ),
      // Nav bar
      child: Container(
        child: Column(
          children: [
            NavBar(),
            TopSectionLandingPage(),
          ],
        ),
      ),
    );
  }
}

// Container(
// constraints: const BoxConstraints(maxWidth: 2000),
// child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Image(image: AssetImage('assets/logo.png')),
// Row(children: [],)
// ],),
// );
