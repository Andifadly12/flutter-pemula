import 'package:flutter/material.dart';
import 'package:latihan3/model/http_scafull.dart';

class home_statefull extends StatefulWidget {
  const home_statefull({super.key});

  @override
  State<home_statefull> createState() => _home_statefullState();
}

class _home_statefullState extends State<home_statefull> {
  httpScafull respons = httpScafull();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('scfful')),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            FittedBox(
              child: Text((respons.id == null)
                  ? 'ID : respons belum ada'
                  : 'ID: ${respons.id}'),
            ),
            FittedBox(
              child: Text((respons.name == null)
                  ? 'Name : belum ada'
                  : "name : ${respons.name}"),
            ),
            FittedBox(
              child: Text((respons.job == null)
                  ? 'Job : belum ada'
                  : "Job : ${respons.job}"),
            ),
            FittedBox(
              child: Text((respons.createdAt == null)
                  ? 'CreateAt: belum ada'
                  : "CerateAt : ${respons.createdAt}"),
            ),
            OutlinedButton(
                onPressed: () {
                  httpScafull.conect('fadly', 'job').then((value) {
                    print(value.name);
                    setState(() {
                      respons = value;
                    });
                  });
                },
                child: Text('button'))
          ]),
        ));
  }
}
