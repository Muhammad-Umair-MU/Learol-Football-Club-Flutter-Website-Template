// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:template1/constants.dart';

class JoinClub extends StatelessWidget {
  JoinClub({Key? key}) : super(key: key);

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          maxWidth: double.infinity, minHeight: 360, maxHeight: 370),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('joinTheClub.png'), fit: BoxFit.cover)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  bottom: 15.0,
                ),
                child: Text('NEWSLETTER',
                    style: TextStyle(color: Colors.white, fontSize: 24.0)),
              ),
              Text('Join the club',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 34.0,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(
            width: 300.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 380.0,
                height: 70.0,
                child: TextField(
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  autocorrect: false,
                  enableSuggestions: true,
                  controller: _controller,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelStyle:
                        TextStyle(color: Color(0xFF39546C), fontSize: 20.0),
                    label: Text(
                      'Enter your email',
                    ),
                    hoverColor: Colors.purple.shade100,
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  _controller.clear();
                },
                child: Text('Subscribe',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
                color: Color(0xFF39546C),
                height: 62.0,
                minWidth: 210.0,
                hoverColor: Colors.amber.shade900,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
