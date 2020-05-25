import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lessonfour/view/home.dart';
import 'package:lessonfour/view/signup.dart';
import 'package:lessonfour/utils/functions.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  void signUpClick(BuildContext context){
    Navigator.of(context).push(MaterialPageRoute<SignUpView>(
      builder: (BuildContext context) {
        return SignUpView();
      },
    ));
  }

  void loginClick(BuildContext context){
    Navigator.of(context).pushReplacement(MaterialPageRoute<HomeView>(
      builder: (context){
        return HomeView();
      }
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          child: Padding(
            padding: setScreenPadding(context, left: 2, right: 2),
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Image.asset(
                          "images/cart.png",
                          height: 120,
                        ),
                        Text(
                          "Tinh Lork",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            TextField(
                              decoration: InputDecoration(labelText: "Email"),
                            ),
                            TextField(
                              decoration:
                              InputDecoration(labelText: "Password", ),
                              obscureText: true,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: setScreenPadding(context, left: 2, right: 2),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: RaisedButton(
                                      child: Text(
                                        "Login",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: Colors.blue,
                                      onPressed: () { loginClick(context); },
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton(
                              child: Text('Not a member?',
                                  style: TextStyle(color: Colors.blue)),
                              onPressed: () {},
                            ),
                            FlatButton(
                              child: Text('Sign up now',
                                  style: TextStyle(color: Colors.blue)),
                              onPressed: () { signUpClick (context);},
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Powered By")
                          ],
                        ),
                        SvgPicture.asset("images/logo-biz.svg",
                            height: 50,
                            allowDrawingOutsideViewBox: true,
                            color: Colors.blue, semanticsLabel: 'A red up arrow')
                      ],
                    )
                  ],
                ),
              ),
            )
          )
      ),
    );
  }

}
