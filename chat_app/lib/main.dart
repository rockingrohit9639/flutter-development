import 'package:flutter/material.dart';
import 'package:chat_app/homepage.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: Key("Material App"),
      title: "Chat App",
      home: HomePage(),
    );
  }
}
