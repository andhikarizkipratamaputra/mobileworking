import 'package:flutter/material.dart';
import 'package:coworking_space/theme.dart';

class AirportDetailWidget extends StatelessWidget {
  final String harga, transaksi;

  AirportDetailWidget({this.harga, this.transaksi});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildDetailColumn("Harga", harga),
        Spacer(),
        buildDetailColumn("Transaksi", transaksi),
      ],
    );
  }

  Widget buildDetailColumn(String label, String value) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
      Text(label.toUpperCase(), style: smallTextStyle),
      Text(value, style: smallBoldTextStyle),
    ],
  );
}
