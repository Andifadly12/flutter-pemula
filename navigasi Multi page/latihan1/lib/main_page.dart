import 'package:flutter/material.dart';
import 'package:latihan1/scond_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page Main")),
      body: Center(
          child: RaisedButton(
        child: Text("Go to Second"),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ScondPage();
          }));
        },
      )),
    );
  }
}
