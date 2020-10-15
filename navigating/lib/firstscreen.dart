import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
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
              "First Page",
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