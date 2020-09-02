import 'package:flutter/material.dart';


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

  Column buildColumn() {
    return Column(
      children:[
      Padding(
        padding: const EdgeInsets.only(top:125.0, right:125.0, left:125.0),
        child: Expanded(flex:2,child: buildCard()),
      ),
      Expanded(flex:1, child: buildWelcomeText()),
      Spacer(flex:1),
      Expanded(flex:1, child: buildBuyTicketButton()),
      Spacer(flex:1),
      Expanded(flex:1, child: buildMyTicketsButton()),
      Spacer()
],

    );
  }

  RaisedButton buildMyTicketsButton() => RaisedButton(child: buildMyTicketsText(),color: Colors.red[400], splashColor: Colors.blueAccent[300],onPressed: () {},);

  RaisedButton buildBuyTicketButton() => RaisedButton(child: buildBuyTicketText(),color: Colors.red[400], splashColor: Colors.blueAccent[300],onPressed: () {},);

  Text buildMyTicketsText() => const Text("My Tickets", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),);

  Text buildBuyTicketText() => const Text("Buy Ticket", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),);

  Text buildWelcomeText() => Text("Welcome Veli!", softWrap: true, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 42),);

  Card buildCard() => Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(250.0)),child: ClipRRect(borderRadius:BorderRadius.circular(500.0), child: buildProfileImage()));

  Image buildProfileImage() => Image(image: AssetImage("assets/vb.jpg"));

  AppBar buildProfileAppBar() {
    return AppBar(actions: <Widget>[
      buildAppBarNotifications(),
      buildAppBarMenu()
    ], title: buildAppBarText(), centerTitle: true,
    backgroundColor: Colors.blue[550],);
  }

  IconButton buildAppBarNotifications() => IconButton(icon: Icon(Icons.notifications), onPressed: () {},);
  IconButton buildAppBarMenu() => IconButton(icon: Icon(Icons.menu), onPressed: () {},);
  Text buildAppBarText() => Text("PROFILE", style: TextStyle(fontWeight: FontWeight.bold),);


}