import 'dart:convert';

import 'package:http/http.dart' as http;

class httpScafull {
  String? id, name, job, createdAt;
  httpScafull({this.id, this.createdAt, this.job, this.name});

  static Future<httpScafull> conect(String name, String job) async {
    Uri url = Uri.parse('https://reqres.in/api/users');
    var hasilrespons = await http.post(url, body: {"name": name, "job": job});

    var data = json.decode(hasilrespons.body);
    return httpScafull(
        id: data['id'],
        name: data['name'],
        job: data['job'],
        createdAt: data['createdAt']);
  }
}
