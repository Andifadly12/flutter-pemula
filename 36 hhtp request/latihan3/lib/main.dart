import 'package:flutter/material.dart';
import 'package:latihan3/post_resolt_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResoult postResoult = null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("API DEMO"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text((postResoult != null)
                ? postResoult.name + " | " + postResoult.job
                : "tidak ada keterangan"),
            RaisedButton(
              onPressed: () {
                PostResoult.connectToAPI("namama", "mahasiswa").then((value) {
                  postResoult = value;
                  setState(() {});
                });
              },
              child: Text("POST"),
            ),
          ],
        )),
      ),
    );
  }
}
