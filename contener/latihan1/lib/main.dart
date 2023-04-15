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
          title: Text("Latihan container"),
        ),
        body: Container(
          color: Colors.red,
          padding: EdgeInsets.fromLTRB(10, 15, 20, 25),
          margin: EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: <Color>[Colors.amber, Colors.black])),
          ),
        ),
      ),
    );
  }
}
