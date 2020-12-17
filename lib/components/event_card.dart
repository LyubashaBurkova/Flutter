import 'package:flutter/material.dart';
import 'package:flutter_app/models/event.dart';

class EventCard extends StatefulWidget {
  const EventCard({
    Key key,
    @required this.event,
  }) : super(key: key);

  final Event event;

  @override
  _EventCardState createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  bool _isEnabled = true;//_Name - приватный метод
  @override
  void initState() {//отработает 1 раз
    // TODO: implement initState
    super.initState();
    print("initState");
  }

  @override
  Widget build(BuildContext context) {//
    print("build");
    return Card(
        color: Colors.yellow[300],
        elevation: 10,
        shadowColor: Colors.blue,
        margin: EdgeInsets.symmetric(vertical: 20.0, horizontal:10.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          enabled: _isEnabled,
          title: Text(
            widget.event.name,
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text(
              "${widget.event.location}, ${widget.event.startDateTime}"
          ),
          leading: Icon(
            Icons.local_activity,
            size: 40,
            color: Colors.grey[800],
          ),
          trailing: IconButton(
            icon: _isEnabled ? Icon(Icons.lock_outline) : Icon(Icons.lock_open),
            onPressed: () => setState(() => _isEnabled = !_isEnabled),
          ),
          onTap: () => print("${widget.event.name} - tap"),
          onLongPress: () => print("${widget.event.name} - long tap"),
        )
    );
  }
}