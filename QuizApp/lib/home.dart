import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  //const homescreen({Key? key}) : super(key: key);

  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  Widget customcard(String langname, String image, String des) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 30.0,
      ),
      child: InkWell(
        // onTap: () {
        //   Navigator.of(context).pushReplacement(MaterialPageRoute(

        //     builder: (context) => getjson(langname),
        //  )

        child: Material(
          elevation: 10.0,
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                      child: Container(
                    child: ClipOval(
                      child: Image(
                          // image: AssetImage(),
                          ),
                    ),
                  )),
                ),
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
        ),
      ),
    );
  }
}
