// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:template1/constants.dart';

// ignore: use_key_in_widget_constructors
class BestPlayers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: kDefaultConstraints.copyWith(minHeight: 600.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'OUR TEAM',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Text(
                'Our best players',
                style: kDefaultTextStyle.copyWith(color: Color(0xFF39546C)),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Column(children: [
              Row(children: [
                PlayersContainer(
                  image: 'davidTotti.png',
                  label: 'David Totti',
                  playerNumber: '9',
                  playerPosition: 'Defender',
                ),
                PlayersContainer(
                  image: 'robertoFirmino.png',
                  label: 'Roberto Firmino',
                  playerNumber: '4',
                  playerPosition: 'Midfielder',
                ),
                PlayersContainer(
                  image: 'joeGomez.png',
                  label: 'joe Gomez',
                  playerNumber: '7',
                  playerPosition: 'Attacker',
                ),
              ]),
              MaterialButton(
                onPressed: () {},
                child: Text('View all players'),
                hoverColor: Colors.amber.shade900,
                color: Colors.grey,
                elevation: 10.0,
                height: 60,
                minWidth: 200,
              )
            ]),
          ]),
    );
  }
}

class PlayersContainer extends StatelessWidget {
  PlayersContainer(
      {required this.image,
      required this.label,
      required this.playerNumber,
      required this.playerPosition});

  final String image;
  final String label;
  final String playerNumber;
  final String playerPosition;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
      ),
      child: Container(
        color: Color(0xFFF9F9F9),
        height: 550.0,
        width: 400,
        child: Column(
          children: [
            Image(image: AssetImage(image)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                label,
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 25),
              ),
              Text(
                playerNumber,
                textAlign: TextAlign.end,
                style: TextStyle(fontSize: 50),
              ),
            ]),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(playerPosition)],
            )
          ],
        ),
      ),
    );
  }
}
