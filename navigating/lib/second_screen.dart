import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigations"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "This is second Page",
              style: TextStyle(
                fontSize: 35.0,
              ),
            ),
            SizedBox(height: 20,),
            RaisedButton(
              color: Colors.purple,
              padding: EdgeInsets.all(20.0),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go to Homepage", style: TextStyle(
                color: Colors.white,
                fontSize:15.0,
              ),),
            )
          ],
        ),
      ),
    );
  }
}