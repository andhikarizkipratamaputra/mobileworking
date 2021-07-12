import 'package:flutter/material.dart';
import 'package:coworking_space/theme.dart';

class LocationWidget extends StatelessWidget {
  final String namaTempat, kota, waktu;

  LocationWidget(
      {@required this.namaTempat,
        @required this.kota,
        @required this.waktu});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(namaTempat.toUpperCase(), style: bigTextStyle),
        SizedBox(height: 2.0),
        Text(kota, style: smallTextStyle),
        SizedBox(height: 2.0),
        Text(waktu, style: mediumTextStyle),
      ],
    );
  }
}