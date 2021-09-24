// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:shadow/shadow.dart';
import 'package:template1/constants.dart';

class Sponsors extends StatefulWidget {
  const Sponsors({Key? key}) : super(key: key);

  @override
  _SponsorsState createState() => _SponsorsState();
}

class _SponsorsState extends State<Sponsors> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: kDefaultConstraints.copyWith(maxHeight: 500.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'OUR PARTNERSHIPS',
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: kDefaultPadding,
            child: Text(
              'Our sponsors',
              style: kDefaultTextStyle.copyWith(color: Color(0xFF39546C)),
            ),
          ),
          Row(
            children: [
              for (int i = 0; i < imagesFirstRow.length; i++)
                shadow(image: imagesFirstRow[i])
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 30.0,
            ),
            child: Row(
              children: [
                for (int i = 0; i < imagesSecondRow.length; i++)
                  shadow(image: imagesSecondRow[i])
              ],
            ),
          )
        ],
      ),
    );
  }
}

class shadow extends StatefulWidget {
  shadow({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;
  bool onHover = false;

  @override
  _shadowState createState() => _shadowState();
}

class _shadowState extends State<shadow> {
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
        child: Padding(
          padding: EdgeInsets.only(
            right: 35.0,
          ),
          child: widget.onHover
              ? Shadow(
                  offset: Offset(-5, -5),
                  child: Image.asset(widget.image),
                )
              : Image.asset(widget.image),
        ));
  }
}

