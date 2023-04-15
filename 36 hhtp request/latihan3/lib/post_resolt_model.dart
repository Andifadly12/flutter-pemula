import 'package:http/http.dart' as http;
import 'dart:convert';

class PostResoult {
  String id;
  String name;
  String job;
  String createsd;

  PostResoult({this.id, this.name, this.job, this.createsd});

  factory PostResoult.createPostResoult(Map<String, dynamic> object) {
    return PostResoult(
        id: object['id'],
        name: object['name'],
        job: object['job'],
        createsd: object['createAt']);
  }
  static Future<PostResoult> connectToAPI(String name, String job) async {
    String apiURL = "https://reqres.in/api/users";

    var apiResult = await http.post(apiURL, body: {"name": name, "job": job});
    var jsonObject = json.decode(apiResult.body);
    return PostResoult.createPostResoult(jsonObject);
  }
}
