import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/quizpage.dart';

class homescreen extends StatefulWidget {
  //const homescreen({Key? key}) : super(key: key);
  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  List<String> images = [
    "images/py.png",
    "images/java.png",
    "images/cpp.png",
    "images/js.png",
    //"images/linux.png",
  ];

  Widget customcard(String langname, String image) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 30.0,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => getjson(),
          ));
        },
        child: Material(
          color: Colors.pinkAccent,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(100.0),
                      child: Container(
                        height: 200.0,
                        width: 200.0,
                        child: ClipOval(
                          child: Image(
                            fit: BoxFit.contain,
                            image: AssetImage(
                              image,
                            ),
                          ),
                        ),
                      )),
                ),
                Center(
                  child: Text(langname,
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.black,
                        fontFamily: "Alike",
                        fontWeight: FontWeight.w700,
                      )),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Let's Check Your basic Python knowledge",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontFamily: "Alike",
                    ),
                    maxLines: 5,
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Programz",
          style: TextStyle(
            fontFamily: "Alike",
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          customcard("Python", images[0]),
          customcard("Java", images[1]),
          customcard("C++", images[2]),
          customcard("Javascript", images[3]),
        ],
      ),
    );
  }
}
