import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("ini latihan 3")),
        body: Center(
            child: Text(
          "ini latihan 3",
          style: TextStyle(
              fontFamily: "crashlandingbb",
              fontSize: 50,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.overline,
              decorationColor: Colors.amber,
              decorationThickness: 4,
              decorationStyle: TextDecorationStyle.dotted),
        )),
      ),
    );
  }
}
