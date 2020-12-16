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
        body: Container(
          child: Container(
            //color: Colors.yellow[300],
            margin: EdgeInsets.all(40),
            padding: EdgeInsets.all(40),
            transform: Matrix4.rotationZ(0.05),
            decoration: BoxDecoration(
              color: Colors.yellow[100],
              //borderRadius: BorderRadius.all(Radius.circular((50))),
              shape: BoxShape.circle,
              border: Border.all(
                width: 5,
                color: Colors.blue[200],
                style: BorderStyle.solid,
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.blue[200],
                    spreadRadius: 20,
                    blurRadius: 20,
                    offset: Offset(10, 3))
              ],
            ),
            child: IconButton(
              icon: Icon(
                CustomIcons.beach_access,
                size: 50.0,
                color: Colors.red,
              ),
              iconSize: 100.0,
              onPressed: () {
                print("Button has been pressed");
              },
            ),
          ),
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/fox.jpg"),
              //fit: BoxFit.fill,//на весь экран
            ),
            //gradient:  RadialGradient(colors: [Colors.yellow[100], Colors.blue])),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Text("Add"),
            backgroundColor: Colors.green[800],
            onPressed: null),
      ),
    );
  }
}
