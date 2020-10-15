import 'package:flutter/material.dart';
import 'package:navigating/second_screen.dart';
import 'firstscreen.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/first": (context) => NextPage(),
        "/second":(context) => SecondPage(),
      },
      title: "Navigations",
      theme: ThemeData(primarySwatch: Colors.purple),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
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
              "HomePage",
              style: TextStyle(
                fontSize: 35.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              color: Colors.purple,
              padding: EdgeInsets.all(20.0),
              onPressed: () {
                Navigator.pushNamed(context, "/first");
              },
              child: Text(
                "Go to First Page",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              color: Colors.purple,
              padding: EdgeInsets.all(20.0),
              onPressed: () {
                Navigator.pushNamed(context, "/second");
              },
              child: Text(
                "Go to Second Page",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
