import 'package:flutter/material.dart';

class Lupaemail extends StatefulWidget {
  static String tag = 'lupaemail-page';
  @override
  _LupaemailState createState() => _LupaemailState();
}

class _LupaemailState extends State<Lupaemail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Masukan Email & no_telp"),
      ),
    );
  }
}