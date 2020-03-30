import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'game.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(fontFamily: 'AnonymousPro', primaryColor: Colors.white),
        home: Container(
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
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      color: Colors.transparent,
                      child: Center(
                          child: Text(
                        "..You wake up with a strong headache and find yourself in a small cockpit of what looks like a huge futuristic plane of some sort. You manage to get out of the aircraft and find yourself in pure light that hits you like a flash grenade.... After the light fades to normal sunlight, you fall on your knees as you look around and see only snow and clouds.",
                        style: TextStyle(color: Colors.white, fontSize: 23, wordSpacing: 7),
                      )),
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Center(
                        child: Ink(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 0.75),
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(1000.0), //Something large to ensure a circle
                            onTap: () => Navigator.push(context, PageTransition(child: Story(), type: PageTransitionType.rightToLeftWithFade)),
                            child: Padding(
                              padding:EdgeInsets.all(20.0),
                              child: Icon(
                                Icons.keyboard_arrow_right,
                                size: 30.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),),
                  Spacer(),
                ]),
          ),
        ));
  }
}
