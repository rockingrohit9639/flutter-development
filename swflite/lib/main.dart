import 'package:flutter/material.dart';

void main() => runApp(myApp());

final routes = {
  "/login":(BuildContext context)=> LoginPage(),
  "/home":(BuildContext context)=> HomePage(),
  "/":(BuildContext context) => LoginPage(),
}

class myApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SqfLite Tutorial",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routes: routes,
      home: ,
    );
  }
}
