import 'package:flutter/material.dart';

class RegistrasiPage extends StatefulWidget {
  static String tag = 'registrasi-page';
  @override
  _RegistrasiPageState createState() => new _RegistrasiPageState();
}

class _RegistrasiPageState extends State<RegistrasiPage> {
  List<String> pekerjaan = [
    "Web_Developer",
    "FrontEnd_Developer",
    "Backend_Developer",
    "Android_Developer",
    "IT_Security"
  ];
  String _pekerjaan = "Web_Developer";

  String jk;
  TextEditingController controlleremail = new TextEditingController();
  TextEditingController controllerpassword = new TextEditingController();
  TextEditingController controllerUmur = new TextEditingController();
  TextEditingController controllerNotelpon = new TextEditingController();

  void pilihjk(String value) {
    setState(() {
      jk = value;
    });
  }

  void pilihpekerjaan(String value) {
    setState(() {
      _pekerjaan = value;
    });
  }

  void kirimdata() {
    AlertDialog alertDialog = new AlertDialog(
      content: Container(
        height: 200,
        child: Column(
          children: <Widget>[
            Text("Email : ${controlleremail.text}"),
            Text("Password : ${controllerpassword.text}"),
            Text("Umur : ${controllerUmur.text}"),
            Text("No Telpon : ${controllerNotelpon.text}"),
            Text("Jenis Kelamin : $jk"),
            Text("Pekerjaan : $_pekerjaan"),
            ElevatedButton(
                child: Text("Simpan"), onPressed: () => Navigator.pop(context))
          ],
        ),
      ),
    );
    showDialog(builder: (context) => alertDialog, context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Registrasi"),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: controlleremail,
                  decoration: InputDecoration(
                    hintText: "Email  ",
                    labelText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                TextField(
                  controller: controllerpassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password  ",
                    labelText: "Password ",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                TextField(
                  controller: controllerUmur,
                  decoration: InputDecoration(
                    hintText: "Umur",
                    labelText: "Umur",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                TextField(
                  controller: controllerNotelpon,
                  decoration: InputDecoration(
                    hintText: "No telpon",
                    labelText: "No telpon",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                RadioListTile(
                  value: 'Pria',
                  title: Text("Pria"),
                  groupValue: jk,
                  onChanged: (String value) {
                    pilihjk(value);
                  },
                ),
                RadioListTile(
                  value: 'Wanita',
                  title: Text("Wanita"),
                  groupValue: jk,
                  onChanged: (String value) {
                    pilihjk(value);
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Pekerjaan =",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                    DropdownButton(
                        onChanged: (String value) {
                          pilihpekerjaan(value);
                        },
                        value: _pekerjaan,
                        items: pekerjaan.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList()),
                  ],
                ),
                ElevatedButton(
                  child: Text("Simpan"),
                  onPressed: () {
                    kirimdata();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
