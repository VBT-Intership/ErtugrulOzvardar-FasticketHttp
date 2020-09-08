import 'package:fasticket/model/flightsmodel.dart';
import 'package:flutter/material.dart';
import 'package:fasticket/viewModel/http_flights_viewmodel.dart';

class HttpBuyTicketView extends HttpFlightsViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: buildTicketAppBar(),
      body: ListView.builder(
        itemCount: httpFlights.length,
        itemBuilder: (context, index) => buildCardHttp(httpFlights[index]),
      ),
    );
  }


AppBar buildTicketAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      actions: <Widget>[
      Row(
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
  Text buildAppBarText() => Text("BUYTICKET", style: TextStyle(fontWeight: FontWeight.bold),);

  Padding buildCardHttp(FlightsModel flights) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 25),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
        color: Colors.teal[300],
        child: SizedBox(
            height: 150,
            child: ListTile(
              title:buildRowEntireCard(flights),subtitle: buildPNR(flights))
        )),);
  }

  Text buildPNR(FlightsModel flights) => Text(flights.pnr.toString());

  Row buildRowEntireCard(FlightsModel flights) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildFlightImage(),
                buildColumnFlightInformation(flights),
                RaisedButton(onPressed: () {}, child: Icon(Icons.add_circle, color: Colors.green, size: 30,), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)))
              ],
            );
  }

  Container buildFlightImage() {
    return Container(
              alignment: Alignment.center,
              child: Container(
              width: MediaQuery.of(context).size.width * 0.17,
              height: MediaQuery.of(context).size.height * 0.09,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              image: DecorationImage(
                  image: AssetImage("assets/plane.jpg"), fit: BoxFit.cover))
  ),
);
  }

  Column buildColumnFlightInformation(FlightsModel flights) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildRowFlightLocation(flights),
              buildRowFlightTime(flights)
            ],
          );
  }

  Row buildRowFlightLocation(FlightsModel flights) {
    return Row(
            children: [
              Text(flights.fromLocation),
              Icon(Icons.arrow_forward_ios),
              Text(flights.toLocation),
            ],
          );
  }

  Row buildRowFlightTime(FlightsModel flights) {
    return Row(
            children: [
              Text(flights.departureTime),
              Icon(Icons.access_time),
              Text(flights.arrivalTime),
            ],
          );
  }





}