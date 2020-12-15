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
        body: RichText(
          text: TextSpan(
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 5.0,
                color: Colors.red,
                fontFamily: "Lobster",
              ),
              children: <TextSpan>[
                TextSpan(text: "Hello, "),
                TextSpan(
                    style: TextStyle(color: Colors.blue[300]),
                    children: <TextSpan>[
                      TextSpan(text: "Brave "),
                      TextSpan(text: "Beautiful "),
                      TextSpan(text: "New "),
                      TextSpan(
                        text: "World",
                        style: TextStyle(
                          color: Colors.grey[500],
                          decoration: TextDecoration.underline,
                          fontStyle: FontStyle.italic
                        ),
                      )
                    ]),
                TextSpan(text: "!!!"),
              ]),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text("Add"),
          backgroundColor: Colors.green[800],
        ),
      ),
    );
  }
}
