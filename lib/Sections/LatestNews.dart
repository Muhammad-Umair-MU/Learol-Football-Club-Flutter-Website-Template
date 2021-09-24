// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:template1/constants.dart';

class LatestNews extends StatefulWidget {
  const LatestNews({Key? key}) : super(key: key);

  @override
  _LatestNewsState createState() => _LatestNewsState();
}

class _LatestNewsState extends State<LatestNews> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 100),
      constraints: kDefaultConstraints.copyWith(minHeight: 600.0),
      color: Color(0xFFF9F9F9),
      child: Row(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'FROM THE BLOG',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: kDefaultPadding,
              child: Text(
                'Latest news',
                style: kDefaultTextStyle.copyWith(color: Color(0xFF39546C)),
              ),
            ),
            Image(image: AssetImage('assets/news/ground-1.png')),
            SizedBox(height: 16.0),
            Text('July 11, 2021'),
            SizedBox(
              height: 20.0,
            ),
            mouseRegion(
                label: 'Liverpool\'s 2021-22 Premier League Expectations'),
            SizedBox(
              height: 23.0,
            ),
            Text(
                'Off the back of another long and especially tough season, our team is finally able to have a\nfew weeks of rest before re-joining up with the squad for pre-season.'),
          ]),
          Padding(
            padding:  EdgeInsets.only(bottom: 20.0,left: 10.0),
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(bottom: 28.0, left: 33.0),
                  child: Row(children: [
                    Image(image: AssetImage('assets/news/ground-2.png')),
                    Padding(
                      padding:  EdgeInsets.only(left: 15.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(
                                bottom: 16.0,
                              ),
                              child: Text('July 17, 2021'),
                            ),
                            mouseRegion(
                                label: 'Sadio Mane Still Makes A\nDifference'),
                          ]),
                    )
                  ]),
                ),
                Padding(
                  padding:  EdgeInsets.only(bottom: 28.0, left: 59.0),
                  child: Row(children: [
                    Image(image: AssetImage('assets/news/ground-3.png')),
                    Padding(
                      padding:  EdgeInsets.only(left: 15.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(
                                bottom: 16.0,
                              ),
                              child: Text('July 17, 2021'),
                            ),
                            mouseRegion(
                                label:
                                    'Robertson\'s Decent Debut At\nEuropean Cup'),
                          ]),
                    )
                  ]),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 31.0),
                  child: Row(children: [
                    Image(image: AssetImage('assets/news/ground-3.png')),
                    Padding(
                      padding:  EdgeInsets.only(left: 15.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(
                                bottom: 16.0,
                              ),
                              child: Text('July 17, 2021'),
                            ),
                            mouseRegion(
                                label:
                                    'Raheem Sterling Turns\nThe Tide For Manchester'),
                          ]),
                    )
                  ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class mouseRegion extends StatefulWidget {
  mouseRegion({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;
  bool onHover = false;

  @override
  _shadowState createState() => _shadowState();
}

class _shadowState extends State<mouseRegion> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onHover: (isHovering) {
          setState(() {
            widget.onHover = true;
          });
        },
        onExit: (isE) {
          setState(() {
            widget.onHover = false;
          });
        },
        child: Text(widget.label,
            style: kDefaultTextStyle.copyWith(
                fontSize: 20,
                color: widget.onHover
                    ? Colors.amber.shade900
                    : Color(0xFF39546C))));
  }
}
