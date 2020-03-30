import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../story.dart';
import 'end.dart';

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme:
            ThemeData(fontFamily: 'AnonymousPro', primaryColor: Colors.white),
        home: Display());
  }
}

class Display extends StatefulWidget {
  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> {

  void CheckForExit () {
    if(story[currentID].choice_1_id == null) {
      currentEnd = currentID;
      Navigator.push(context, PageTransition(child: End(), type: PageTransitionType.fade));
    }
  }
  
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
              Spacer(),
              Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  color: Colors.transparent,
                  child: Text(
                    story[currentID].text,
                    style: TextStyle(color: Colors.white, fontSize: 25),
                    strutStyle: StrutStyle(leading: 1),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 55, vertical: 21),
                    child: FlatButton(
                      color: Colors.transparent,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15), side: BorderSide(color: Colors.white, width: 0.5)),
                        onPressed: () {
                        setState(() {
                          currentID = story[currentID].choice_1_id;
                        });
                        CheckForExit();
                        },
                        child: Text(
                          story[currentID].option1,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.fade,
                        )),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 55, vertical: 21),
                    child: FlatButton(
                      color: Colors.transparent,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15), side: BorderSide(color: Colors.white, width: 0.5)),
                        onPressed: () {
                          setState(() {
                            currentID = story[currentID].choice_2_id;
                          });
                          CheckForExit();
                        },
                        child: Text(
                          story[currentID].option2,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                          textAlign: TextAlign.center,
                        )),
                  ),
                ),
              ),
              Spacer(),
            ]),
      ),
    );
  }
}
