import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Ini latihan 2")),
        body: Center(
            child: Container(
          color: Colors.black,
          width: 200,
          height: 200,
          padding: EdgeInsets.all(3),
          child: Image(
            image: NetworkImage(
                "https://cdn.pixabay.com/photo/2016/11/29/03/15/man-1867009__340.jpg"),
            fit: BoxFit.contain,
            repeat: ImageRepeat.repeat,
          ),
        )),
      ),
    );
  }
}
