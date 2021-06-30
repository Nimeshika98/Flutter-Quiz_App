import 'dart:convert';

import 'package:flutter/material.dart';

class getjson extends StatelessWidget {
  //const getjson({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString("assets/python.json"),
      builder: (context, snapshot) {
        var mydata = json.decode(snapshot.data.toString());
        if (mydata == null) {
          return Scaffold(
            body: Center(
              child: Text(
                "Loading",
              ),
            ),
          );
        } else {
          return quizpage();
        }
      },
    );
  }
}

class quizpage extends StatefulWidget {
  const quizpage({Key? key}) : super(key: key);

  @override
  _quizpageState createState() => _quizpageState();
}

class _quizpageState extends State<quizpage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
