import 'package:flutter/material.dart';
import 'package:calculator/homepage.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator App",
      theme: ThemeData(primarySwatch: Colors.teal),
      home: HomePage(),
    );
  }
}

