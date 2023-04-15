import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("latihan row dan column"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("tex 1"),
          Text("text 2"),
          Text("Text 3"),
          Row(
            children: <Widget>[Text("Tex 4 "), Text("Text 5")],
          )
        ],
      ),
    ));
  }
}
