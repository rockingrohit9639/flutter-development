import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int firstNum;
  int secondNum;
  String textDisplay = "";
  String res;
  String operator;
  void btnClicked(String btnVal){
      if(btnVal == "C")
        {
          textDisplay = "";
          firstNum =0;
          secondNum =0;
          res = "";
          operator = "";
        }
      else if(btnVal =="+" || btnVal == "-" || btnVal == "x" || btnVal== "/"){
        firstNum = int.parse(textDisplay);
        res = "";
        operator = btnVal;
      }
      else if(btnVal == "="){
        secondNum = int.parse(textDisplay);
        if(operator == "+"){
          res = (firstNum + secondNum).toString();
        }
        else if(operator == "-"){
          res = (firstNum - secondNum).toString();
        }
        else if(operator == "x"){
          res = (firstNum * secondNum).toString();
        }else if(operator == "/"){
          res = (firstNum ~/ secondNum).toString();
        }
        }
      else{
        res = int.parse(textDisplay + btnVal).toString();
      }



      setState(() {
        textDisplay = res;
      });
  }


  Widget customWidget(String btnVal) {
    return Expanded(
      child: OutlineButton(
        padding: EdgeInsets.all(25.0),
        onPressed: () => btnClicked(btnVal),
        child: Text(
          "$btnVal",
          style: TextStyle(
            fontSize: 25.0,
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
          "Calculator",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: Container(
                  padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomRight,
              child: Text(
                "$textDisplay",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )),
            Row(
              children: [
                customWidget("9"),
                customWidget("8"),
                customWidget("7"),
                customWidget("+"),
              ],
            ),
            Row(
              children: [
                customWidget("6"),
                customWidget("5"),
                customWidget("4"),
                customWidget("-"),
              ],
            ),
            Row(
              children: [
                customWidget("3"),
                customWidget("2"),
                customWidget("1"),
                customWidget("x"),
              ],
            ),
            Row(
              children: [
                customWidget("C"),
                customWidget("0"),
                customWidget("="),
                customWidget("/"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
