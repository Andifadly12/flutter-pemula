import 'dart:convert';

import 'package:http/http.dart' as http;

class httpccafull {
  String? id, email, fullname, avatar;
  httpccafull({this.id, this.fullname, this.email, this.avatar});

  static Future<httpccafull> conectAPI(String id) async {
    Uri url = Uri.parse("https://reqres.in/api/users/" + id);

    var hasilRespon = await http.get(url);
    var data = json.decode(hasilRespon.body)['data'];
    return httpccafull(
        id: data['id'].toString(),
        fullname: data['first_name'] + ' ' + data['last_name'],
        email: data['email'],
        avatar: data['avatar']);
  }
}
