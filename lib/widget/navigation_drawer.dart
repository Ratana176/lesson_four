
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.blue,
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      children: <Widget>[
                        Text("test"),
                        Text("test")
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                ListView(
                  children: <Widget>[
                    Text("Test")
                  ],
                ),
              ],
            ),
          )
        ],
      )
    );
  }

}
