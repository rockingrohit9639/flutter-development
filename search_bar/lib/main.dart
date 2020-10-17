import 'package:flutter/material.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      title: "Creating Search Bar",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget searchWidget = Text("Search App");
  Widget sideIcon = Icon(Icons.search);
  bool ifSearch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: searchWidget,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            icon: sideIcon,
            onPressed: () {
              setState(() {
                if(ifSearch == false){
                  searchWidget = TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      hintText: "Enter Search Query",
                      border: InputBorder.none,
                    ),
                  );
                  sideIcon = Icon(Icons.cancel);
                  ifSearch = true;
                }
                else if(ifSearch == true){
                  ifSearch = false;
                  searchWidget = Text("Search App");
                  sideIcon = Icon(Icons.search);
                }
              });
            }
            )
        ],
      ),
    );
  }
}
