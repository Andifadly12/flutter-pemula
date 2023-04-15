import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class list extends StatelessWidget {
  const list({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> nama = ['fadly', 'ilmi', 'al'];
    return Scaffold(
      appBar: AppBar(
        title: Text('list view'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            child: Text(nama[index]),
          );
        },
      ),
    );
  }
}
