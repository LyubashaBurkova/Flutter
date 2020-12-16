import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/custom_icons.dart';

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
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,//линия выравнивания текста
            //для нее обязателен textBaseline
          textBaseline: TextBaseline.alphabetic,
          children: [
            Container(
                color: Colors.blueAccent,
                padding: EdgeInsets.all(30),
                child: Text("1")
            ),
            Container(
                color: Colors.orangeAccent,
                padding: EdgeInsets.all(50),
                child: Text("1")
            ),
            Container(
                color: Colors.blueAccent,
                padding: EdgeInsets.all(80),
                child: Text("1")
            ),
          ]
        ),
        floatingActionButton: FloatingActionButton(
            child: Text("Add"),
            backgroundColor: Colors.green[800],
            onPressed: null),
      ),
    );
  }
}
