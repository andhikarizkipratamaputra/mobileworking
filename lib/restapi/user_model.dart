import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class PostResult {
  String id;
  String nomermeja;
  String hargasewa;
  String kodemeja;
  String kapasitas;
  String fasilitas;

  PostResult(
      {this.id,
      this.nomermeja,
      this.kodemeja,
      this.hargasewa,
      this.fasilitas,
      this.kapasitas});

  factory PostResult.createPostResult(Map<String, dynamic> object) {
    return PostResult(
        id: object['id'],
        nomermeja: object['name'],
        hargasewa: object['job'],
        kodemeja: object['avatar'],
        fasilitas: object['email'],
        kapasitas: object['first_name']);
  }

  static Future<PostResult> connectToAPI(String kdmeja, String hargasewa,
      String kodemeja, String fasilitas, String kapasitas) async {
    String apiUrl = "https://reqres.in/api/users";

    var apiResult = await http.post(apiUrl, body: {
      "name": kdmeja,
      "job": hargasewa,
      "avatar": kodemeja,
      "email": fasilitas,
      "first_name": kapasitas
    });
    var jsonObject = json.decode(apiResult.body);

    return PostResult.createPostResult(jsonObject);
  }
}
