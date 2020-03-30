import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import './views/introduction.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'AnonymousPro',
          accentColor: Colors.white,
          primaryColor: Colors.white),
      home: MainMenu(),
    );
  }
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/wallpaper.jpg'),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Spacer(
                flex: 1,
              ),
              Expanded(
                flex: 6,
                child: Center(
                    child: Text(
                  'Alyx',
                  style: TextStyle(
                      fontSize: 45, color: Colors.white, letterSpacing: 15),
                )),
              ),
              Spacer(),
              Expanded(
                  flex: 2,
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 60, vertical: 40),
                      width: double.infinity,
                      child: FlatButton(
                        onPressed: () => Navigator.push(context, PageTransition(child: Intro(), type: PageTransitionType.fade)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Colors.white, width: 0.75)),
                        child: Text(
                          "START",
                          style:
                              TextStyle(color: Colors.white, letterSpacing: 35),
                        ),
                      ))),
              Spacer(
                flex: 2,
              ),
            ],
          )),
    );
  }
}
