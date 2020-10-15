import "package:flutter/material.dart";
import 'package:http/http.dart' as http;
import 'dart:convert';


void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final String url = "https://swapi.dev/api/people/";
  List data;

  @override
  void initState() {
    super.initState();
    this.getJsonData();
  }

  Future<String> getJsonData() async{
    var response = await http.get(
      // Encoding the url
      Uri.encodeFull(url),
      // Only accept Json
      headers: {"Accept":"application/json"}
    );

    print(response.body);

    setState(() {
      var decoded_json = jsonDecode(response.body);
      data = decoded_json['results'];
    });

    return "Success";
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parsing JSON via Http"),
      ),
      body: ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Card(child: Container(
                    child: Text(data[index]['name']),
                    padding: EdgeInsets.all(20.0),
                  ),)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
