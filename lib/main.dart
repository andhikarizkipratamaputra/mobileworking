import 'package:coworking_space/ScanQr.dart';
import 'package:coworking_space/login/loginpage.dart';
import 'package:coworking_space/lupaemail.dart';
import 'package:coworking_space/restapi/apimain.dart';
import 'package:flutter/material.dart';
import 'package:coworking_space/theme.dart';
import 'package:coworking_space/home_page.dart';
import 'login_page.dart';
import 'registrasi_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    RegistrasiPage.tag: (context) => RegistrasiPage(),
    ScanQrPage.tag: (context) => ScanQrPage(),
    Lupaemail.tag: (context) => Lupaemail(),
    Newlogin.tag: (context) => Newlogin(),
    MyApi.tag: (context) => MyApi(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Co-Working Space',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        fontFamily: 'Nunito',
      ),
      home: Newlogin(),
      routes: routes,
    );
  }
}
