import 'package:flutter/material.dart';
import 'package:latihan1/Colorful_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("colorful button")),
        body: Center(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[ColorfulButton(Colors.pink, Colors.blue)]),
        ),
      ),
    );
  }
}
