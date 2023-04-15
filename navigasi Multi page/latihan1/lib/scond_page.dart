import 'package:flutter/material.dart';

class ScondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text("BACK"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
