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
          title: Center(
            child: Text("ini latihan 2",
                maxLines: 20,
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 30,
                    fontWeight: FontWeight.w400)),
          ),
        ),
        body: Container(
          color: Colors.amber,
          width: 150,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "data 1",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Text("data 2"),
              Text("data 3"),
              Row(
                children: <Widget>[
                  Text("data 4"),
                  Text(
                    "data 5",
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
