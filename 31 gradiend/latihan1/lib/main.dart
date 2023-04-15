import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Gradiend opacity")),
      body: Center(
          child: ShaderMask(
        shaderCallback: (rectengle) {
          return LinearGradient(
                  colors: [Colors.black, Colors.transparent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)
              .createShader(
                  Rect.fromLTRB(0, 0, rectengle.width, rectengle.height));
        },
        blendMode: BlendMode.dstIn,
        child: Image(
          width: 300,
          image: NetworkImage(
              "https://i0.wp.com/langgam.id/wp-content/uploads/2020/08/masjid-shalat-salat.jpg?fit=1280%2C765&ssl=1"),
        ),
      )),
    ));
  }
}
