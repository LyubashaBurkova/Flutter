import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        body: SvgPicture.asset("assets/images/dog.svg"),
        floatingActionButton: FloatingActionButton(
          child: Text("Add"),
          backgroundColor: Colors.green[800],
        ),
      ),
    );
  }
}
