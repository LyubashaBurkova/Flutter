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
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //линия выравнивания текста
            //для нее обязателен textBaseline
            textBaseline: TextBaseline.alphabetic,
            children: [
              Expanded(
                flex:1,
                child: Container(
                    color: Colors.blueAccent,
                    padding: EdgeInsets.all(30),
                    child: Text("1")),
              ),
              SizedBox(height: 100),
              Container(
                  color: Colors.orangeAccent,
                  padding: EdgeInsets.all(50),
                  child: Text("1")),
              SizedBox(height: 20),
              Expanded(
                flex: 2,
                child: Container(
                    color: Colors.blueAccent,
                    padding: EdgeInsets.all(60),
                    child: Text("1")),
              ),
            ]),
        floatingActionButton: FloatingActionButton(
            child: Text("Add"),
            backgroundColor: Colors.green[800],
            onPressed: null),
      ),
    );
  }
}
