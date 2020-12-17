import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/custom_icons.dart';
import 'package:flutter_app/event.dart';

void main() => runApp(FlutterTutorialApp());

class FlutterTutorialApp extends StatelessWidget {
  final List<Event> events = [
    Event(
        name: "Event 1", location: "location 1", startDateTime: DateTime.now()),
    Event(
        name: "Event 2", location: "location 2", startDateTime: DateTime.now()),
    Event(
        name: "Event 3", location: "location 3", startDateTime: DateTime.now()),
    Event(
        name: "Event 4", location: "location 4", startDateTime: DateTime.now()),
    Event(
        name: "Event 5", location: "location 5", startDateTime: DateTime.now()),
    Event(
        name: "Event 6", location: "location 6", startDateTime: DateTime.now()),
    Event(
        name: "Event 7", location: "location 7", startDateTime: DateTime.now()),
    Event(
        name: "Event 8", location: "location 8", startDateTime: DateTime.now()),
    Event(
        name: "Event 9", location: "location 9", startDateTime: DateTime.now()),
    Event(
        name: "Event 10",
        location: "location 10",
        startDateTime: DateTime.now()),
    Event(
        name: "Event 11",
        location: "location 11",
        startDateTime: DateTime.now()),
    Event(
        name: "Event 12",
        location: "location 12",
        startDateTime: DateTime.now()),
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
        body: ListView.builder(
          //reverse: true,
          //controller: ScrollController(initialScrollOffset: 150),
          physics: BouncingScrollPhysics(),
          //physics: NeverScrollableScrollPhysics(),//отключаем скролл
          padding: EdgeInsets.all(10),
          itemCount: events.length,
          itemBuilder: (_, index) => Card(
            color: Colors.yellow[300],
            elevation: 10,//на сколько карточка поднята (тень)
            shadowColor: Colors.blue,
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal:10.0),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Text(
                  //events[index].location,//events[index] - объект
                  "${events[index].name}",
                  style: TextStyle(fontSize: 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "location - ${events[index].location}, ${events[index].startDateTime}",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(events[index].location),
                    SizedBox(width: 10),
                    Text(events[index].startDateTime.toString()),
                  ],
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
