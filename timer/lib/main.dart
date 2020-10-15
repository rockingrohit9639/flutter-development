import 'dart:async';

import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Timer Project",
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController tb;
  int hour = 0;
  int minutes = 0;
  int seconds = 0;
  String timeToDisplay = "";
  bool started = true;
  bool stopped = true;
  int timefortimer;
  bool cancelTimer = false;
  final dur = const Duration(seconds: 1);

  @override
  void initState() {
    tb = TabController(length: 2, vsync: this);
    super.initState();
  }

  void start() {

    setState(() {
      started = false;
      stopped = false;
    });

    timefortimer = ((hour * 3600) + (minutes * 60) + seconds);
    Timer.periodic(dur, (Timer t) {
      setState(() {
        if(timefortimer < 1 || cancelTimer == true){
          t.cancel();
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) => HomePage(),
          ));
        }
        else{
          timefortimer -= 1;
          timeToDisplay = timefortimer.toString();
        }
      });
    });
  }

  void stop() {
    setState(() {
      started = true;
      stopped = true;
      cancelTimer = true;
      timeToDisplay = "";
    });
  }

  Widget timer() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Text("HH"),
                    ),
                    NumberPicker.integer(
                        initialValue: hour,
                        minValue: 0,
                        maxValue: 23,
                        onChanged: (val) {
                          setState(() {
                            hour = val;
                          });
                        })
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Text("MM"),
                    ),
                    NumberPicker.integer(
                        initialValue: minutes,
                        minValue: 0,
                        maxValue: 59,
                        onChanged: (val) {
                          setState(() {
                            minutes = val;
                          });
                        })
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Text("SS"),
                    ),
                    NumberPicker.integer(
                        initialValue: seconds,
                        minValue: 0,
                        maxValue: 59,
                        onChanged: (val) {
                          setState(() {
                            seconds = val;
                          });
                        })
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(timeToDisplay, style: TextStyle(
              fontSize: 25.0,
            ),),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: started ? start : null,
                  color: Colors.white12,
                  padding:
                      EdgeInsets.symmetric(horizontal: 35.0, vertical: 12.0),
                  child: Text("Start"),
                ),
                RaisedButton(
                  onPressed: stopped ? null : stop,
                  color: Colors.white12,
                  padding:
                      EdgeInsets.symmetric(horizontal: 35.0, vertical: 12.0),
                  child: Text("Stop"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Timer App"),
        bottom: TabBar(
          labelStyle: TextStyle(
            fontSize: 20.0,
          ),
          labelPadding: EdgeInsets.only(bottom: 10.0),
          controller: tb,
          tabs: [Text("Timer"), Text("Stopwatch")],
        ),
      ),
      body: TabBarView(
        children: [timer(), Text("Stopwatch")],
        controller: tb,
      ),
    );
  }
}
