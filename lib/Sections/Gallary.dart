// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:template1/constants.dart';

class Gallary extends StatelessWidget {
  const Gallary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: kDefaultConstraints.copyWith(minHeight: 600.0),
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
              )),
          Row(children: [
            Image.asset('assets/gallary/homie15.png'),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Image.asset('assets/gallary/waterBottle.png'),
            ),
          ]),
          SizedBox(
            height: 35.0,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset('assets/gallary/homie17.png'),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Image.asset('assets/gallary/homie3-24.png'),
            ),
          ])
        ],
      ),
    );
  }
}
