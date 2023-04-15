import 'package:flutter/material.dart';
import 'package:latihan38/user_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String output = "no data";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("API"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(output),
            RaisedButton(
              onPressed: () {
                User.getUsers("2").then((users) {
                  output = "";
                  for (int i = 0; i < users.length; i++)
                    output = output + "[" + users[i].name + "]";
                  setState(() {});
                });
              },
              child: Text("GET"),
            )
          ],
        )),
      ),
    );
  }
}
