import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("ini adalah sebuah pernyattan"),
          ),
          body: Stack(
            children: <Widget>[
              Container(
                height: 130,
                width: 40,
                margin: EdgeInsets.fromLTRB(-1, 1, 1, -1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        RaisedButton(
                          child: Text("tambah"),
                          onPressed: null,
                        ),
                        RaisedButton(
                          child: Text("Hapus"),
                          onPressed: null,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              ListView(
                children: <Widget>[Text("ini data ke")],
              )
            ],
          )),
    );
  }
}
