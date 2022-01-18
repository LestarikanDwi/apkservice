import 'dart:async';

import 'package:flutter/material.dart';
import 'constans.dart';
import 'package:apkservice/users/landingpage.dart' as users;

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }
    @override
    void dispose() {
      super.dispose();
    }

    startLaunching() async {
      var duration = const Duration(seconds: 10);
      return new Timer(duration, () {
        Navigator.of(context)
            .pushReplacement(new MaterialPageRoute(builder: (_) => new users.LandingPage()));
      });
    }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.shade200,
              offset: Offset(2, 4),
              blurRadius: 5,
              spreadRadius: 2)
        ],
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Palette.T, Palette.T1]),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Center(
            child: new Image.asset(
              "assets/T.png",
              height: 200.0,
              width: 400.0,
            ),
          )
        ],
      ),
    ));
  }
}
