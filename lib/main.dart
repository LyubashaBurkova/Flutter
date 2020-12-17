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
          color: Colors.green,
          width: 400,
          height: 500,
          child: Stack(
              alignment: Alignment.bottomRight,
              //overflow: Overflow.visible,
              //fit: StackFit.loose,//любая высота элементов, ограниченная размером экрана,
              //fit: StackFit.expand,//элементы будут увеличены до максимально возможного значения
              fit: StackFit.passthrough,//элементы полностью зависят от ограничений родительского виджета,
              children: [
            Container(
              child: Container(
                  color: Colors.purple,
                  padding: EdgeInsets.all(130),
                  child: Text("1")),
            ),
            Container(
                color: Colors.orangeAccent,
                padding: EdgeInsets.all(100),
                child: Text("1")),
            Positioned(
              width:100,//приоритетнее, чем свойство сомого элемента
              height:100,
              top: -20,
              left:30,
              child: Container(
                child: Container(
                    color: Colors.blueAccent,
                    padding: EdgeInsets.all(80),
                    child: Text("1")),
              ),
            ),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
            child: Text("Add"),
            backgroundColor: Colors.green[800],
            onPressed: null),
      ),
    );
  }
}
