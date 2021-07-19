import 'package:coworking_space/ScanQr.dart';
import 'package:coworking_space/restapi/user_model.dart';
import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';

class MyApi extends StatefulWidget {
  static String tag = "apimain-tag";
  @override
  _MyApiState createState() => _MyApiState();
}

class _MyApiState extends State<MyApi> {
  PostResult postResult = null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: (Scaffold(
        appBar: AppBar(
          title: Text("Api"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text((postResult != null)
                  ? postResult.id +
                      "|" +
                      postResult.nomermeja +
                      "|" +
                      postResult.hargasewa +
                      "|" +
                      postResult.kodemeja +
                      "|" +
                      postResult.fasilitas +
                      "|" +
                      postResult.kapasitas
                  : "tidak ada data"),
              ElevatedButton(
                onPressed: () {
                  PostResult.connectToAPI("A1", "20000", "ACSVASKW",
                          "AC,WIFI,PRINTER", "6 Orang")
                      .then((value) {
                    postResult = value;
                    setState(() {});
                  });
                  Navigator.of(context).pushNamed(ScanQrPage.tag);
                },
                child: Text("Proses Scan"),
              )
            ],
          ),
        ),
      )),
    );
  }
}
