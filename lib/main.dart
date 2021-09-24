// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:template1/Sections/TopSection.dart';
import 'package:template1/Sections/result_page.dart';
import 'package:template1/Sections/BestPlayers.dart';
import 'package:template1/Sections/Statistics.dart';
import 'package:template1/Sections/Gallary.dart';
import 'package:template1/Sections/LatestNews.dart';
import 'package:template1/Sections/Sponsors.dart';
import 'package:template1/Sections/ClubMembers.dart';
import 'package:template1/Sections/JoinClub.dart';
import 'package:template1/Sections/Contact.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          TopSection(),
          ResultPage(),
          BestPlayers(),
          Statistics(),
          Gallary(),
          LatestNews(),
          Sponsors(),
          ClubMembers(),
          JoinClub(),
          Contact(),
        ],
      ),
    ));
  }
}
