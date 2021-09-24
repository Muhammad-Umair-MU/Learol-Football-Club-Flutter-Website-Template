import 'package:flutter/material.dart';

//
// final List<String> sectionsName = [
//   "Home",
//   "About",
//   "Services",
//   "Projects",
//   "Contact"
// ];

const kDefaultConstraints = BoxConstraints(
  maxWidth: 1430.0,
);
const kDefaultTextStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

const kDefaultPadding = EdgeInsets.only(top: 16, bottom: 30);

// Result Class
const kResultTextStyle = TextStyle(
  fontSize: 15.0,
);
const kResultScoreTextStyle = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.bold,
);

// Statistics Class
String statistics = 'Statistics';

String clubHistory =
    'Our soccer club has a long history of wins and losses\nsince 1995. Take a look at our recent achievement\nand stats that we’re proud of.';
String fame =
    'From local to international games and championships,\nour soccer team always searches for new ways to engage players and\nfans as well as to build the community through a beatiful game.\nSuch an approach allowed us to achieve huge success on the field.';

const kStatisticsTextStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
);
const kStatisticsNumberStyle = TextStyle(
  fontSize: 55,
  fontWeight: FontWeight.bold,
);

// Sponsors Class
List imagesFirstRow = [
  'assets/sponsors/artworkx.png',
  'assets/sponsors/maironti.png',
  'assets/sponsors/decoroto.png',
  'assets/sponsors/drankso.png',
];
List imagesSecondRow = [
  'assets/sponsors/mito.png',
  'assets/sponsors/fibrolo.png',
];

// ClubMembers Class
String review =
    '   The coaches at Learol know how to\n\nproperly treat their club members. They also\nteach you various ways of improving your technique."';
