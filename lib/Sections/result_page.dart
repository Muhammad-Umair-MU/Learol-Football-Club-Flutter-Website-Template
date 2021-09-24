// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:template1/constants.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 80.0),
      color: Color(0xFFF9F9F9),
      constraints: kDefaultConstraints.copyWith(maxHeight: 500.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'FOOTBALL SCORES',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: Text(
            'Latest match results',
            style: kDefaultTextStyle.copyWith(color: Color(0xFF39546C)),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.only(
              right: 33,
            ),
            child: Icon(Icons.arrow_back),
          ),
          ContainerResult(
              image: Image.asset('barcelona.png'),
              image2: Image.asset('leipzig.png'),
              time: 'July 17, 2021',
              textStyle: kResultTextStyle,
              score: '1:1',
              textStyleScore: kResultScoreTextStyle,
              club: 'National Championship',
              textStyleClub: kResultTextStyle),
          ContainerResult(
              image: Image.asset('villarreal.png'),
              image2: Image.asset('manchester-united.png'),
              time: 'July 21, 2021',
              textStyle: kResultTextStyle,
              score: '0:1',
              textStyleScore: kResultScoreTextStyle,
              club: 'European Championship',
              textStyleClub: kResultTextStyle),
          ContainerResult(
              image: Image.asset('chelsea.png'),
              image2: Image.asset('nantes.png'),
              time: 'July 11, 2021',
              textStyle: kResultTextStyle,
              score: '2:1',
              textStyleScore: kResultScoreTextStyle,
              club: 'Premier League',
              textStyleClub: kResultTextStyle),
          Padding(
            padding: EdgeInsets.only(
              left: 33,
            ),
            child: Icon(Icons.arrow_forward),
          ),
        ]),
      ]),
    );
  }
}

class ContainerResult extends StatelessWidget {
  ContainerResult(
      {required this.image,
      required this.image2,
      required this.time,
      required this.score,
      required this.club,
      required this.textStyle,
      required this.textStyleScore,
      required this.textStyleClub});

  final Image image;
  final Image image2;
  final String time, score, club;
  final TextStyle textStyle, textStyleScore, textStyleClub;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        child: Row(
          children: [
            image,
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      time,
                      style: textStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                      ),
                      child: Text(
                        score,
                        style: textStyleScore,
                      ),
                    ),
                    Text(
                      club,
                      style: textStyleClub,
                    ),
                  ]),
            ),
            image2,
          ],
        ),
      ),
    );
  }
}

