import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:latihan3/model/httpScafull.dart';

class Getscafull extends StatefulWidget {
  const Getscafull({super.key});

  @override
  State<Getscafull> createState() => _GetscafullState();
}

class _GetscafullState extends State<Getscafull> {
  httpccafull respost = httpccafull();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('latihan get'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 30,
              child: Image.network((respost.avatar == null)
                  ? 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb6Ict8PJGdPthDh3tSiEH_bBZDgd1gDERkQ&usqp=CAU'
                  : "${respost.avatar}"),
            ),
            FittedBox(
              child: Text((respost.id == null)
                  ? 'Id: belum ada'
                  : "id : ${respost.id}"),
            ),
            FittedBox(
              child: Text((respost.fullname == null)
                  ? 'Name: belum ada'
                  : "Name : ${respost.fullname}"),
            ),
            FittedBox(
              child: Text((respost.email == null)
                  ? 'Email: belum ada'
                  : "Email : ${respost.email}"),
            ),
            OutlinedButton(
                onPressed: () {
                  httpccafull
                      .conectAPI((1 + Random().nextInt(10)).toString())
                      .then((value) {
                    print(value.email);
                    setState(() {
                      respost = value;
                    });
                  });
                },
                child: Text("get"))
          ],
        ),
      ),
    );
  }
}
