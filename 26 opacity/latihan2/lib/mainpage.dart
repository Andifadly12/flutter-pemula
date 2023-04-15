import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Aplikasi ini",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Color.fromARGB(255, 111, 151, 184)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
        ),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Card(
              child: Stack(children: <Widget>[
                Opacity(
                  opacity: 0.7,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://static.vecteezy.com/system/resources/thumbnails/002/037/924/small/abstract-blue-background-with-beautiful-fluid-shapes-free-vector.jpg"),
                            fit: BoxFit.cover)),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4),
                          topRight: Radius.circular(4)),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCBm7vALf4LcMR1XBn5H1iPOhA8A3DvKilYA&usqp=CAU"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(
                      20, 50 + MediaQuery.of(context).size.width * 0.6, 20, 20),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Beautiful Sunset at Paddy Field",
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
          ),
        )
      ]),
    );
  }
}
