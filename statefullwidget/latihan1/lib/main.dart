import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int conter = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("latihan ListView"),
        ),
        body: ListView(children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text("tamabh Data"),
                  onPressed: () {
                    setState(() {
                      widgets.add(Text(
                        "data k1" + conter.toString(),
                        style: TextStyle(fontSize: 35),
                      ));
                      conter++;
                    });
                  },
                ),
                RaisedButton(
                  child: Text("hapus data"),
                  onPressed: () {
                    setState(() {
                      widgets.removeLast();
                      conter--;
                    });
                  },
                )
              ]),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgets,
          )
        ]),
      ),
    );
  }
}
