import 'package:flutter/material.dart';
import 'package:coworking_space/common/app_bar.dart';
import 'package:coworking_space/common/ticket_card.dart';
import 'package:coworking_space/common/toggle_widget.dart';
import 'package:coworking_space/model/ticket.dart';
import 'ScanQr.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    Ticket ticket = Ticket();
    ticket.id = "1";
    ticket.sewa = "Sewa";
    ticket.email = "Andhika@Gmail.com";
    ticket.waktusewa = "13:00";
    ticket.selesai = "Selesai";
    ticket.tempatSewa = "Jakarta";
    ticket.selesaisewa = "14:00";
    ticket.harga = "Rp.20.000";
    ticket.transaksi = "Bayar Ditempat";

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(title: 'Co-Working Space'),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            ToggleWidget(firstOption: "History", secondOption: "Scan Qr Code"),
            SizedBox(height: 20.0),
            ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: <Widget>[
                Hero(tag: ticket.id, child: TicketCardWidget(ticket: ticket)),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(ScanQrPage.tag);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
