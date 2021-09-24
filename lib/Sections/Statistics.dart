// ignore_for_file: use_key_in_widget_constructors, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:template1/constants.dart';

String statistics = 'Statistics';
String clubHistory =
    'Our soccer club has a long history of wins and losses\nsince 1995. Take a look at our recent achievement\nand stats that we’re proud of.';

class Statistics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF9F9F9),
      constraints: kDefaultConstraints,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            textWidget(
              label: statistics,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: textWidget(
                    label: 'Club number',
                    style:
                        kDefaultTextStyle.copyWith(color: Color(0xFF39546C)))),
            Padding(
                padding: EdgeInsets.only(top: 30.0),
                child:
                    textWidget(label: clubHistory, style: kStatisticsTextStyle))
          ]),
          SizedBox(
            height: 300,
          ),
          Padding(
            padding: EdgeInsets.only(top: 150.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              textWidget(label: fame, style: kStatisticsTextStyle),
              Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: Row(children: [
                  textWidget(
                      label: '234',
                      style: kStatisticsNumberStyle.copyWith(
                          color: Color(0xFF39546C))),
                  SizedBox(
                    width: 120,
                  ),
                  textWidget(
                      label: '105',
                      style: kStatisticsNumberStyle.copyWith(
                          color: Color(0xFF39546C))),
                ]),
              ),
              Row(children: [
                textWidget(
                    label: 'League cup games', style: kStatisticsTextStyle),
                SizedBox(
                  width: 50,
                ),
                textWidget(
                    label: 'International games', style: kStatisticsTextStyle),
              ]),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textWidget(
                        label: '2K+',
                        style: kStatisticsNumberStyle.copyWith(
                            color: Color(0xFF39546C))),
                    textWidget(
                        label: 'Registered fans', style: kStatisticsTextStyle),
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}

class textWidget extends StatelessWidget {
  textWidget({required this.label, required this.style});

  final String label;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: style,
    );
  }
}
