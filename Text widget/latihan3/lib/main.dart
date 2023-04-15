import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  void TekanTombol() {
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ini judulnya"),
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("Tambah Bilangan"),
              onPressed: TekanTombol,
            ),
          ],
        )),
      ),
    );
  }
}
