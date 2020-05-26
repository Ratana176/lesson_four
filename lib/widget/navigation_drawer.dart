import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        Container(
            color: Colors.blue,
            child: DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    "images/user_male.png",
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Chan marida", style: TextStyle(color: Colors.white),),
                        Text("Chan.marida@gmail.com", style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  )
                ],
              ),
            )
        ),
        ListTile(
          leading: Icon(Icons.multiline_chart),
          title: Text("Add Product"),
        ),
        ListTile(
          leading: Icon(Icons.calendar_today),
          title: Text("About Us"),
        ),
        ListTile(
          leading: Icon(Icons.notifications),
          title: Text("Edit Profile"),
        ),
        ListTile(
          leading: Icon(Icons.keyboard_return),
          title: Text("Logout"),
        ),
      ],
    ));
  }
}
