import 'package:flutter/material.dart';
import 'package:fasticket/view/profile.dart';


class BuyTicket extends StatefulWidget {
  BuyTicket({Key key}) : super(key: key);

  @override
  _BuyTicketState createState() => _BuyTicketState();
}

class _BuyTicketState extends State<BuyTicket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {Navigator.pop(context);})],),
      body: Text("Tickets:")
    );
  }
}