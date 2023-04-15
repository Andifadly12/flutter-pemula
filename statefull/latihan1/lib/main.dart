import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  int number = 0;
  void numbe() {
    setState(() {
      number += 1;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('balajar statefull'),
          ),
          body: Center(
            child: Column(
              children: [
                Text(number.toString()),
                ElevatedButton(onPressed: numbe, child: Text('tekan tombol')),
              ],
            ),
          )),
    );
  }
}
