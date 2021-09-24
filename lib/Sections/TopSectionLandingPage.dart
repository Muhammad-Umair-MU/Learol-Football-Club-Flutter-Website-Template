// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class TopSectionLandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        constraints: const BoxConstraints(maxWidth: 1420),
        width: width,
        margin: EdgeInsets.symmetric(
          vertical: 60,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Welcome to Learol -\nSoccer & Football Club',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 90,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Our club is the #1 place to engage with one of the world’s most popular sports.\nWe are dedicated to promoting the culture of soccer.',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            MaterialButton(
              minWidth: 100,
              color: Color(0xFF39546c),
              hoverColor: Colors.amber.shade900,
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: Text(
                  'Read More',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
// RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(20.0))
