import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: QrImage(
            backgroundColor: Colors.amber,
            foregroundColor: Colors.red,
            errorCorrectionLevel: QrErrorCorrectLevel.L,
          ),
        ),
      ),
    );
  }
}
