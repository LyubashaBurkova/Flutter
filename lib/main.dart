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
        body: IconButton(
          icon: Icon(
            CustomIcons.beach_access,
            size: 50.0,
            color: Colors.red,
          ),
          color: Colors.grey[900],
          iconSize: 100.0,
          onPressed: (){
            print("Button has been pressed");
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: Text("Add"),
          backgroundColor: Colors.green[800],
          onPressed: null
        ),
      ),
    );
  }
}
