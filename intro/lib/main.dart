import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[500],
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage("images/pic.jpg"),
            ),
            Text(
              "Rohit Kumar Saini",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'RussoOne',
                decoration: TextDecoration.none,
                fontSize: 30.0,
              ),
            ),
            Text(
              "Python Developer",
              style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 20),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text("+91 9639970146"),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text("rohitbhatwara1@gmail.com"),
              ),
            )
          ],
        )),
      ),
    );
  }
}
