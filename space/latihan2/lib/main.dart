import 'dart:html';

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
            title: Text("latihan 2"),
          ),
          body: Center(
            child: Row(children: <Widget>[Text("data")]),
          )),
    );
  }
}
