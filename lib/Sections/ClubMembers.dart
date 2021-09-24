// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:template1/constants.dart';

class ClubMembers extends StatefulWidget {
  @override
  _ClubMembersState createState() => _ClubMembersState();
}

class _ClubMembersState extends State<ClubMembers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: kDefaultConstraints.copyWith(maxHeight: 500.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('TESTIMONIALS'),
          Padding(
            padding: kDefaultPadding,
            child: Text('What club members say',
                style: kDefaultTextStyle.copyWith(color: Color(0xFF39546C))),
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            // Cards for reviews
            reviewsContainer(),
            reviewsContainer(),
          ]),
          MaterialButton(
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class reviewsContainer extends StatelessWidget {
  const reviewsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/sponsors/quotation-mark.png',
            width: 28.0,
            height: 28.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Text(
              review,
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 33.0, top: 20.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 28.0,
                  child: Image.asset('assets/reviews/devid.png'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 13.0),
                  child: Column(
                    children: [
                      Text(
                        'Devon Lane',
                        style:
                            TextStyle(color: Color(0xFF39546C), fontSize: 20.0),
                      ),
                      Text('Club Member')
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

//  ListTile(
//                         leading: Icon(Icons.album),
//                         subtitle: Text('The coaches at Learol know how to\nproperly treat their club members. They also\nteach you various ways of improving your technique',),
//                       ),
