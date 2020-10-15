import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:navigation_bar/newpage.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryColor:
            defaultTargetPlatform == TargetPlatform.iOS ? Colors.white : null,
      ),
      home: HomePage(),
//      routes: <String, WidgetBuilder>{
//        "/a": (BuildContext context) => NewPage("New Page")
//      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Rohit Kumar Saini"),
              accountEmail: Text("rohitbhatwara1@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("R"),
              ),
            ),
            ListTile(
              title: Text("Page One"),
              trailing: Icon(Icons.arrow_right_alt),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => NewPage("Page One")));
//                Navigator.of(context).pushNamed("/a");
              },
            ),
            ListTile(
              title: Text("Page Two"),
              trailing: Icon(Icons.arrow_right_alt),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => NewPage("Page Two")));
//                Navigator.of(context).pushNamed("/a");
              },
            ),
            Divider(),
            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Nav-Drawer"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 10.0 : 0.0,
      ),
      body: Container(
        child: Center(
          child: Text("Navigation Drawer Tutorial"),
        ),
      ),
    );
  }
}
