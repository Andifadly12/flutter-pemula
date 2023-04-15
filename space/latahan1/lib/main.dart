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
          title: Text("space widgate"),
        ),
        body: Center(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.,
            children: <Widget>[
              Container(
                width: 80,
                height: 80,
                color: Colors.amber,
              ),
              Spacer(
                flex: 1,
              ),
              Container(
                width: 80,
                height: 80,
                color: Color.fromARGB(255, 40, 7, 255),
              ),
              Spacer(
                flex: 2,
              ),
              Container(
                width: 80,
                height: 80,
                color: Color.fromARGB(255, 255, 7, 230),
              )
            ],
          ),
        ),
      ),
    );
  }
}
