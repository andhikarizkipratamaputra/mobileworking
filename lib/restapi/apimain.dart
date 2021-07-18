import 'package:coworking_space/restapi/user_model.dart';
import 'package:flutter/material.dart';

class MyApi extends StatefulWidget {
  static String tag = "apimain-tag";
  @override
  _MyApiState createState() => _MyApiState();
}

class _MyApiState extends State<MyApi> {
  DataMeja dataMeja = null;

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
              Text((dataMeja != null)
                  ? dataMeja.id +
                      "|" +
                      dataMeja.kdmeja +
                      "|" +
                      dataMeja.hargasewa +
                      "|" +
                      dataMeja.kapasitas +
                      "|" +
                      dataMeja.fasilitas +
                      "|" +
                      dataMeja.statussewa +
                      "|" +
                      dataMeja.kodemeja
                  : "tidak ada data"),
              ElevatedButton(
                onPressed: () {
                  DataMeja.connectToAPI("8").then((value) {
                    dataMeja = value;
                    setState(() {});
                  });
                },
                child: Text("GET"),
              )
            ],
          ),
        ),
      )),
    );
  }
}
