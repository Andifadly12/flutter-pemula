import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double myPadding = 5;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("AnimatedPaddiing"),
        ),
        body: Column(children: <Widget>[
          Flexible(
            flex: 1,
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: AnimatedPadding(
                    duration: Duration(seconds: 5),
                    padding: EdgeInsets.all(myPadding),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          myPadding = 20;
                        });
                      },
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: AnimatedPadding(
                    duration: Duration(seconds: 1),
                    padding: EdgeInsets.all(myPadding),
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                )
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: AnimatedPadding(
                    duration: Duration(seconds: 1),
                    padding: EdgeInsets.all(myPadding),
                    child: Container(
                      color: Colors.yellow,
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: AnimatedPadding(
                    duration: Duration(seconds: 1),
                    padding: EdgeInsets.all(myPadding),
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
