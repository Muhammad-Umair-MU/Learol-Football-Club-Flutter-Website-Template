// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 100,
      ),
      constraints: BoxConstraints(maxHeight: 90.0, maxWidth: 1417.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/logo.png'),
          Row(children: [
            MaterialButton(
                onPressed: () {},
                child: Text(
                  'Home',
                  style:
                      TextStyle(color: Colors.amber.shade900, fontSize: 17.0),
                )),
            MaterialButton(
              // ignore: void_checks
              onPressed: () {},
              child: Text('About us',
                  style: TextStyle(color: Colors.white, fontSize: 17.0)),
              hoverColor: Colors.amber.shade900,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text('Our Team',
                  style: TextStyle(color: Colors.white, fontSize: 17.0)),
              hoverColor: Colors.amber.shade900,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text('Gallary',
                  style: TextStyle(color: Colors.white, fontSize: 17.0)),
              hoverColor: Colors.amber.shade900,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text('Contact',
                  style: TextStyle(color: Colors.white, fontSize: 17.0)),
              hoverColor: Colors.amber.shade900,
            ),
            Icon(
              Icons.search,
              color: Colors.white,
            ),
          ])
        ],
      ),
    );
  }
}