import 'package:flutter/material.dart';
import 'package:flutter_app/components/event_card.dart';
import 'package:flutter_app/models/event.dart';

class HomeScreen extends StatelessWidget {

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
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter tutorial"),
        centerTitle: true,
        backgroundColor: Colors.green[400],
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(10),
        itemCount: events.length,
        itemBuilder: (_, index) => EventCard(event: events[index]),
      ),
      floatingActionButton: FloatingActionButton(
          child: Text("Add"),
          backgroundColor: Colors.green[800],
          onPressed: null),
    );
  }
}


