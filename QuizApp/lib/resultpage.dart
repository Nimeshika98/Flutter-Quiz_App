import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/home.dart';

class resultpage extends StatefulWidget {
  resultpage({Key? key, required this.marks}) : super(key: key);

  int marks;
  // resultpage({Key key, @required this.marks}) : super(key: key);

  @override
  _resultpageState createState() => _resultpageState(marks);
}

class _resultpageState extends State<resultpage> {
  List<String> images = [
    "images/win.png",
    "images/goodjob.png",
    "images/bad.jpg",
  ];

  String message;
  String image;

  @override
  void initState() {
    if (marks < 20) {
      image = image[2];
      message = "You should Try Hard...\n" + "You scored $marks marks";
    } else if (marks < 35) {
      image = image[1];
      message = "You Can Do Better...\n" + "You scored $marks marks";
    } else {
      image = image[0];
      message = "You Did Very Best...\n" + "You scored $marks marks";
    }
    super.initState();
  }

  int marks;
  _resultpageState(this.marks);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Result",
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 7,
            child: Material(
              elevation: 10.0,
              child: Container(
                width: 300.0,
                height: 300.0,
                child: Column(
                  children: <Widget>[
                    Material(
                      elevation: 5.0,
                      child: Container(
                        width: 300.0,
                        height: 300.0,
                        child: ClipRect(
                          child: Image(
                            image: AssetImage(
                              image,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5.0,
                        horizontal: 15.0,
                      ),
                      child: Center(
                        child: Text(
                          message,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: "Quando",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => homescreen(),
                    ));
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  borderSide: BorderSide(width: 3.0, color: Colors.pink),
                  splashColor: Colors.pinkAccent,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
