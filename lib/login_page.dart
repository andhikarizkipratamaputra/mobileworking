import 'package:flutter/material.dart';
import 'package:coworking_space/home_page.dart';
import 'package:coworking_space/registrasi_page.dart';

import 'lupaemail.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('images/co.jpg'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '@Gmail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: 'some password',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 1.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed(HomePage.tag);
        },
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );

    final registrasi = Padding(
      padding: EdgeInsets.symmetric(vertical: 1.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed(RegistrasiPage.tag);
        },
        child: Text('Registrasi', style: TextStyle(color: Colors.white)),
      ),
    );

    final lupaemail = TextButton(
      child: Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(Lupaemail.tag);
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Co-Working Space"),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            registrasi,
            lupaemail,
          ],
        ),
      ),
    );
  }
}
