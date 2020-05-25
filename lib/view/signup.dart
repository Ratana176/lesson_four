import 'package:flutter/material.dart';
import 'package:lessonfour/utils/functions.dart';

class SignUpView extends StatefulWidget {
  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: setScreenPadding(context, left: 2, right: 2),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: "First Name"),
              ),
              TextField(
                decoration: InputDecoration(labelText: "Last Name"),
              ),
              TextField(
                decoration: InputDecoration(labelText: "Email"),
              ),
              TextField(
                decoration: InputDecoration(labelText: "Password"),
                obscureText: true,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Confirm Password"),
                obscureText: true,
              ),
              SizedBox(height: 20,),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      color: Colors.blue,
                      child: Text("Submit", style: TextStyle(color: Colors.white),),
                      onPressed: (){},
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
