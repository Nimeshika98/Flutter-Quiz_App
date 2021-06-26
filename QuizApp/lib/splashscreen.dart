import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  // const splashscreen({Key? key}) : super(key: key);

  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Text(
          "Try Maths\n Test Yourself !!",
          style: TextStyle(
            fontSize: 50.0,
            color: Colors.black,
            fontFamily: "Satisfy",
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
