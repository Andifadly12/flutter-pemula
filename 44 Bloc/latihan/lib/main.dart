import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Mainpage(),
    );
  }
}

class Mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            backgroundColor: Colors.amber,
            onPressed: () {},
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            backgroundColor: Colors.lightBlue,
            onPressed: () {},
          ),
        ],
      ),
      appBar: AppBar(title: Text("Bloc dengan flutter_bloc")),
      body: Center(
        child: AnimatedContainer(
          width: 100,
          height: 100,
          color: Colors.amber,
          duration: Duration(microseconds: 500),
        ),
      ),
    );
  }
}
