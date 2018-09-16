import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation heartbeatAnimation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    heartbeatAnimation =
        Tween<double>(begin: 100.0, end: 150.0).animate(controller);
    controller.forward().whenComplete(() {
      controller.reverse();
    });

    Future.delayed(Duration(seconds: 1)).then((value) {
      Navigator.of(context).pushReplacementNamed("/dashboard");
    });

  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: heartbeatAnimation,
      builder: (context, widget) {
        return Scaffold(
          body: Stack(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(),
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: heartbeatAnimation.value,
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 200.0),
                child: Text(
                  "Health पुणे",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 36.0,
                      fontWeight: FontWeight.w300),
                ),
              ),
            )
          ]),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

}
