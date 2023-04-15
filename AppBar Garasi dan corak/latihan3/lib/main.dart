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
          leading: Icon(Icons.adb),
          title: Text(
            "BelajarFlatter",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300),
          ),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.abc)),
            IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app))
          ],
        ),
      ),
    );
  }
}
