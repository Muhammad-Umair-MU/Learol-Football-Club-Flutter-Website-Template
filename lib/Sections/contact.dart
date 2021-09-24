// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:template1/constants.dart';

var icons = [
  FontAwesomeIcons.youtube,
  FontAwesomeIcons.facebook,
  FontAwesomeIcons.instagram,
  FontAwesomeIcons.linkedin
];

var iconColor = [
  Colors.red,
  Colors.blue,
  Color(0xFFfb3958),
  Color(0xFF2867B2),
];

bool isHover = false;

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 450, maxWidth: 1000.0),
      margin: const EdgeInsets.only(top: 100),
      color: Color(0xFFFFFFFF),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Contact Us:',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'P: +1 234 567 8901',
                style: kDefaultTextStyle.copyWith(color: Color(0xFF39546C)),
              ),
              Text(
                'Opening hours:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('9 to 5 pm on Weekdays'),
              SizedBox(
                height: 60.0,
              ),
              Text('© 2021 Learol. All Rights Reserved. '),
              Text('Muhammad Umair Khan'),
              Text('umair.ims19@gmail.com')
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Our Address:',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
              Text(
                '178 West 27th Street, Suite 527, New York NY 10012',
                style: TextStyle(fontSize: 20.0),
              ),
              Row(children: [
                for (int i = 0; i < icons.length; i++) IconClass(index: i),
              ])
            ],
          ),
        ],
      ),
    );
  }
}

class IconClass extends StatefulWidget {
  const IconClass({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  _IconClassState createState() => _IconClassState();
}

class _IconClassState extends State<IconClass> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50.0,
        right: 20.0,
      ),
      child: MouseRegion(
        onHover: (isHo) {
          setState(() {
            isHover = true;
          });
        },
        onExit: (isE) {
          setState(() {
            isHover = false;
          });
        },
        child: isHover
            ? Icon(
                icons[widget.index],
                color: iconColor[widget.index],
              )
            : Icon(icons[widget.index]),
      ),
    );
  }
}

// class Contact extends StatefulWidget {
//   const Contact({Key? key}) : super(key: key);

//   @override
//   _ContactState createState() => _ContactState();
// }

// class _ContactState extends State<Contact> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 100),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Column(
//             children: [
//               Text('Contact Us:'),
//               Text('P: +1 234 567 8901'),
//               Text('Opening hours:'),
//               Text('9 to 5 pm on Weekdays'),
//             ],
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text('Our Address:'),
//               Text('178 West 27th Street, Suite 527, New York NY 10012'),
//               Row(children: [
//                 for (int i = 0; i < icons.length; i++) IconClass(index: i),
//               ])
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
