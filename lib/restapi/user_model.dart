import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class DataMeja {
  String id;
  String kdmeja;
  String hargasewa;
  String kapasitas;
  String fasilitas;
  String statussewa;
  String kodemeja;

  DataMeja(
      {this.id,
      this.kdmeja,
      this.hargasewa,
      this.kapasitas,
      this.fasilitas,
      this.statussewa,
      this.kodemeja});

  factory DataMeja.formJson(Map<String, dynamic> json) {
    return DataMeja(
      id: json['id'] as String,
      kdmeja: json['Kd_Meja'] as String,
      kapasitas: json['Kapasitas'] as String,
      fasilitas: json['Fasilitas'] as String,
      statussewa: json['Status_Sewa'] as String,
      kodemeja: json['Kode_Meja'] as String,
    );
  }
  static Future<DataMeja> connectToAPI(String id) async {
    String baseUrl = "http://192.168.100.6/workingspace/api/datameja" + id;

    var apiResult = await http.get(baseUrl, headers: {
      "Accept": "application/json",
      "Access-Control-Allow-Origin": "*"
    });
    var jsonObject = json.decode(apiResult.body);
    var userData = (jsonObject as Map<String, dynamic>)['id'];
    return DataMeja.formJson(userData);
  }
}
