import 'dart:convert';

import 'package:http/http.dart' as http;

class User {
  String id;
  String name;
  User({this.id, this.name});

  factory User.createToIPA(Map<String, dynamic> object) {
    return User(
        id: object['id'],
        name: object['first_name'] + ' ' + object['last_name']);
  }

  static Future<User> connectToAPI(String id) async {
    String apiURL = "https://reqres.in/api/users/" + id;

    var apiUser = await http.get(apiURL);
    var jsonObject = json.decode(apiUser.body);

    var UserData = (jsonObject as Map<String, dynamic>)['data'];
    return User.connectToAPI(UserData);
  }
}
