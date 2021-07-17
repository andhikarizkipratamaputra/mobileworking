import 'package:flutter/material.dart';
import 'package:coworking_space/common/FadePageRoute.dart';
import 'package:coworking_space/common/qr_detail_widget.dart';
import 'package:coworking_space/common/location_widget.dart';
import 'package:coworking_space/model/ticket.dart';
import 'package:coworking_space/pages/ticket_detail.dart';
import 'package:coworking_space/theme.dart';

class TicketCardWidget extends StatelessWidget {
  final Ticket ticket;
  final bool showQR;
  TicketCardWidget({@required this.ticket, this.showQR = true});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240.0,
      padding: showQR
          ? const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0)
          : const EdgeInsets.all(0.0),
      child: Material(
        color: primaryColor,
        elevation: showQR ? 8.0 : 0.0,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        child: InkWell(
          onTap: () {
            Navigator.of(context)
                .push(FadePageRoute(widget: TicketDetail(ticket: ticket)));
          },
          child: Container(
            margin: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          LocationWidget(
                            namaTempat: ticket.sewa,
                            kota: ticket.email,
                            waktu: ticket.waktusewa,
                          ),
                          Spacer(),
                          LocationWidget(
                            namaTempat: ticket.selesai,
                            kota: ticket.tempatSewa,
                            waktu: ticket.selesaisewa,
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),
                      Container(
                        height: 0.5,
                        color: Colors.white,
                      ),
                      SizedBox(width: 1.0),
                      Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Image.asset(
                            "images/qrcode.png",
                            width: 40,
                            height: 40,
                            color: Colors.white,
                          )),
                      AirportDetailWidget(
                        harga: ticket.harga,
                        transaksi: ticket.transaksi,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
