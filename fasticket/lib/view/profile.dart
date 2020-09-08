import 'package:flutter/material.dart';
import 'package:fasticket/view/http_buyticket.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: buildProfileAppBar(),
      body: buildColumn()
      );
  }

  Row buildColumn() {
    return Row(
      children: [
        Spacer(flex:2),
        Expanded(flex:6,
                child: columnProperties(),
        ),
        Spacer(flex:2)
      ],
    );
  }

  Column columnProperties() {
    return Column(
          children:[
          Expanded(flex:3,child: buildCard()),
          Expanded(flex:3, child: buildWelcomeText()),
          Expanded(flex:1,child: buildBuyTicketButton()),
          Spacer(flex:1),
          Expanded(flex:1,child: buildMyTicketsButton()),
          Spacer(flex:1)
],

        );
  }

  RaisedButton buildMyTicketsButton() => RaisedButton(child: buildMyTicketsText(),color: Colors.red[400], splashColor: Colors.blueAccent[300],onPressed: () {},);

  RaisedButton buildBuyTicketButton() => RaisedButton(child: buildBuyTicketText(),color: Colors.red[400], splashColor: Colors.blueAccent[300],onPressed: () {
    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HttpBuyTicket()));
  },);

  Text buildMyTicketsText() => const Text("My Tickets", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),);

  Text buildBuyTicketText() => const Text("Buy Ticket", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),);

  FittedBox buildWelcomeText() => FittedBox(fit:BoxFit.contain, child: Text("Welcome Veli!", softWrap: true, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),));

  Card buildCard() => Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(250.0)),child: ClipRRect(borderRadius:BorderRadius.circular(500.0), child: buildProfileImage()));

  Image buildProfileImage() => Image(image: AssetImage("assets/vb.jpg"));

  AppBar buildProfileAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      actions: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildBackButton(),
          buildAppBarText(),
          buildAppBarNotifications(),
          buildAppBarMenu(),

        ],
      )
    ],
    backgroundColor: Colors.blue[550],);
  }

  IconButton buildBackButton() => IconButton(icon: Icon(Icons.arrow_back_ios), color: Colors.white,onPressed: (){Navigator.pop(context);});

  IconButton buildAppBarNotifications() => IconButton(icon: Icon(Icons.notifications), onPressed: () {},);
  IconButton buildAppBarMenu() => IconButton(icon: Icon(Icons.menu), onPressed: () {},);
  Text buildAppBarText() => Text("PROFILE", style: TextStyle(fontWeight: FontWeight.bold),);


}