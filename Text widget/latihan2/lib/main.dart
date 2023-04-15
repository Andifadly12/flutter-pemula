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
          title: Text("ini latihan 2"),
        ),
        body: Center(
          child: Container(
            width: 150,
            height: 150,
            color: Colors.amber,
            child: Text(
                "pada dasanya hanya orang tau baik buruknya dia jangan pernah menjac orang karna kamu tak tahu apa yang ada di kepala nya ",
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center),
          ),
        ),
      ),
    );
  }
}
