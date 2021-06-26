import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TryMaths",
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: splashscreen(),
    );
  }
}
