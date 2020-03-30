import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../story.dart';
import 'introduction.dart';

class End extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/wallpaper.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Spacer(flex: 1,),
              Expanded(
                flex: 10,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  color: Colors.transparent,
                  child: Center(
                    child: Text(
                      story[currentID].text,
                      style: TextStyle(color: Colors.white, fontSize: 23),
                      strutStyle: StrutStyle(leading: 1),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Center(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 55, vertical: 45),
                    child: FlatButton(
                        color: Colors.transparent,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15), side: BorderSide(color: Colors.white, width: 0.5)),
                        onPressed: () {
                          currentID = 0;
                          Navigator.push(context, PageTransition(child: Intro(), type: PageTransitionType.fade));
                        },
                        child: Text(
                          "RESTART",
                          style: TextStyle(color: Colors.white, fontSize: 12, letterSpacing: 30),
                          textAlign: TextAlign.center,
                        )),
                  ),
                ),
              ),
              Spacer(flex: 1,),
            ]),
      ),
    );
  }
}
