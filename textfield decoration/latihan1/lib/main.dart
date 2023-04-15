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
          title: Text("latihan text fielt"),
        ),
        body: Container(
          margin: EdgeInsets.all(30),
          child: Column(children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  fillColor: Colors.lightBlue[50],
                  filled: true,
                  icon: Icon(Icons.adb),
                  suffix: Container(
                    width: 5,
                    height: 4,
                    color: Colors.amber,
                  ),
                  prefixIcon: Icon(Icons.person),
                  prefixText: "Name :",
                  prefixStyle: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w400),
                  labelText: "Nama lengkap",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Nama Lengkapnya Loh..."),
              maxLength: 5,
              obscureText: true,
              onChanged: ((value) {
                setState(() {});
              }),
              controller: controller,
            ),
            Text(controller.text)
          ]),
        ),
      ),
    );
  }
}
