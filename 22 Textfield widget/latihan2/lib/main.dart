import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("latihan 2"),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              obscureText: true,
              maxLength: 4,
              maxLines: 1,
              onChanged: (value) {},
              controller: controller,
            ),
            Text(controller.text)
          ],
        ),
      ),
    );
  }
}
