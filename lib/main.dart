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
        body: Center(
          child: Container(
            color: Colors.green,
            width: 400,
            height: 500,
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 20,
              //отступ между контейнерами по главной оси
              runSpacing: 30,
              //отступы по второстепенной оси

              alignment: WrapAlignment.center,
              //выравнивание по главной оси
              runAlignment: WrapAlignment.center,
              //выравнивание по второстепенной оси

              verticalDirection: VerticalDirection.up,//последовательность заполнения строк, сначала заполняется нижняя
              //textDirection: TextDirection.ltr,//слева направо
              children: [
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                  child: Text(
                    "X",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                  child: Text(
                    "X",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
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
