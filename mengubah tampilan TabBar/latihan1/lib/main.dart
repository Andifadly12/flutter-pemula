import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabBar mytab = TabBar(
      indicator: BoxDecoration(
          color: Colors.red,
          border: Border(top: BorderSide(color: Colors.purple, width: 5))),
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.comment),
          text: "comments",
        ),
        Tab(
          icon: Icon(Icons.computer),
          text: "computer",
        ),
        Tab(
          text: "news",
        ),
        Tab(
          text: "exit",
        )
      ],
    );
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
              title: Text("Contoh Tab Bar"),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(mytab.preferredSize.height),
                child: Container(
                  color: Colors.amber,
                  child: mytab,
                ),
              )),
          body: TabBarView(children: <Widget>[
            Center(
              child: Text("Tab1"),
            ),
            Center(
              child: Text("Tab 2"),
            ),
            Tab(
              child: Text("Tab 3"),
            ),
            Tab(
              child: Text("Tab 4"),
            )
          ]),
        ),
      ),
    );
  }
}
