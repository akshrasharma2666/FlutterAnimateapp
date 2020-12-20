import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';


class MyAnimationApp extends StatefulWidget {
  @override
  _MyAnimationAppState createState() => _MyAnimationAppState();
}

class _MyAnimationAppState extends State<MyAnimationApp> with SingleTickerProviderStateMixin {
  var myanicon;
  var animation;

  @override
  void initState() {
    super.initState();
    myanicon = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    print(myanicon);

    animation = CurvedAnimation(parent: myanicon, curve: Curves.bounceInOut)
      ..addListener(() {
        setState(() {
          print(animation.value);
        });
      });

    print(animation);

    myanicon.forward();
    print(myanicon);
  }

  @override
  void dispose() {
    super.dispose();
    myanicon.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LiquidSwipe(
      pages: [
        Container(
          color: Colors.pink,
          child: Center(
            child: Card(
             color: Colors.transparent,
              elevation: 0 * animation.value,
        child: GestureDetector(
          onTap: () {
            myanicon.forward(from: 0.5);
            print("clicked ..");
          },
          child: Container(
            width: 200 * animation.value + 50,
            height: 200 * animation.value + 50,
           
            decoration: BoxDecoration(
              shape: BoxShape.circle,
               color: Colors.greenAccent,
              ),
            //color: Color.fromRGBO(255, 25, 100, 10),
            child: Center(
            child: Text(
              'Animation',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.0 * animation.value + 8.0,
              ),
            ),
            ),
          ),
        ),
            ),
          ),
      
    )
        ,
        Container(
          color: Colors.greenAccent,
          child: Center(
            child: Card(
             
              elevation: 15 * animation.value,
        child: GestureDetector(
          onTap: () {
            myanicon.forward(from: 0.5);
            print("clicked ..");
          },
          child: Container(
            width: 200 * animation.value + 50,
            height: 200 * animation.value + 50,
            color: Colors.purpleAccent[700],
            //color: Color.fromRGBO(255, 25, 100, 10),
            child: Center(
            child: Text(
              'Hello',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0 * animation.value + 8.0,
              ),
            ),
            ),
          ),
        ),
            ),
          ),),
        Container(
          color: Colors.blue,
          child: Center(
            child: Card(
             color: Colors.transparent,
              elevation: 0 * animation.value,
        child: GestureDetector(
          onTap: () {
            myanicon.forward(from: 0.5);
            print("clicked ..");
          },
          child: Container(
            width: 250 * animation.value + 50,
            height: 200 * animation.value + 50,
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
               color: Colors.orange[900],
              ),
            //color: Color.fromRGBO(255, 25, 100, 10),
            child: Center(
            child: Text(
              'Awsome App',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0 * animation.value + 8.0,
              ),
            ),
            ),
          ),
        ),
            ),
          ),
          
          ),
        Container(
          color: Colors.white,
          child: Center(
            child: Card(
             color: Colors.transparent,
              elevation: 15 * animation.value,
        child: GestureDetector(
          onTap: () {
            myanicon.forward(from: 0.5);
            print("clicked ..");
          },
          child: Container(
            width: 300 * animation.value + 50,
            height: 80 * animation.value + 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
               color: Colors.black,
              ),
            child: Center(
            child: Text(
              'Have A Nice Day',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0 * animation.value + 8.0,
              ),
            ),
            ),
          ),
        ),
            ),
          ),
          
          ),
      ],
      enableSlideIcon: true,
      
      positionSlideIcon: 0,
    );
  }
}
