import 'package:flutter/material.dart';
import 'package:flutter_app/models/event.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    Key key,
    @required this.event,
  }) : super(key: key);

  final Event event;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.yellow[300],
        elevation: 10,
        shadowColor: Colors.blue,
        margin: EdgeInsets.symmetric(vertical: 20.0, horizontal:10.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          title: Text(
            event.name,
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text(
              "${event.location}, ${event.startDateTime}"
          ),
          leading: Icon(
            Icons.local_activity,
            size: 40,
            color: Colors.grey[800],
          ),
          trailing: IconButton(
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () => print("${event.name} - tap Details"),
          ),
          onTap: () => print("${event.name} - tap"),
          onLongPress: () => print("${event.name} - long tap"),
        )
    );
  }
}