import 'package:flutter/material.dart';
import 'package:latihan3/get_scafull.dart';
import 'package:latihan3/home_statefull.dart';
import 'package:latihan3/listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Getscafull());
  }
}
