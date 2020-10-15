import 'package:flutter/material.dart';
import 'package:chat_app/chatscreen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Text("Chit-Chat"),
      ),
      body: ChatScreen()
    );
  }
}
