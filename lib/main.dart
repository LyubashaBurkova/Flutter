import 'package:flutter/material.dart';

void main() => runApp(FlutterTutorialApp());

class FlutterTutorialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter tutorial"),
          centerTitle: true,
          backgroundColor: Colors.green[400],
        ),
        body: Text(
          "Hello world",
          style: TextStyle(
            fontSize: 30.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            letterSpacing: 3.0,
            color: Colors.red,
            fontFamily: "Lobster",
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text("Add"),
          backgroundColor: Colors.green[800],
        ),
      ),
    );
  }
}