import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/custom_icons.dart';

void main() => runApp(FlutterTutorialApp());

class FlutterTutorialApp extends StatelessWidget {
  final List<String> events = [
    "Events 1",
    "Events 2",
    "Events 3",
    "Events 4",
    "Events 5",
    "Events 6",
    "Events 7",
    "Events 8",
    "Events 9",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter tutorial"),
          centerTitle: true,
          backgroundColor: Colors.green[400],
        ),
        body: ListView.separated(
          //reverse: true,
          //controller: ScrollController(initialScrollOffset: 150),
          physics: BouncingScrollPhysics(),
          //physics: NeverScrollableScrollPhysics(),//отключаем скролл
          padding: EdgeInsets.all(5),
          itemCount: events.length,
          itemBuilder: (_, index) => Text(
            events[index],
            style: TextStyle(fontSize: 100),
          ),
          separatorBuilder: (_, ___) => Divider(color: Colors.red, thickness: 5,),
          // separatorBuilder: (_, ___) => Text(
          //   "_____________________________",
          //   style: TextStyle(fontSize: 30),
          // ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Text("Add"),
            backgroundColor: Colors.green[800],
            onPressed: null),
      ),
    );
  }
}
