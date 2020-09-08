
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fasticket/model/flightsmodel.dart';
import 'package:fasticket/view/http_buyticket.dart';
import 'package:http/http.dart' as http;

abstract class HttpFlightsViewModel extends State<HttpBuyTicket> {
  final baseUrl = "https://fasticket-f2b53.firebaseio.com/";
  bool isLoading = false;
  List<FlightsModel> httpFlights = [];

  @override
  void initState() {
    super.initState();
    callItems();
  }

  Future<void> callItems() async {
    changeLoading();
    await _getHttpCity();
    changeLoading();
    checkErrorList();
  }

  void checkErrorList() {
    if (httpFlights.isEmpty) {
      showDialog(
          context: context,
          builder: (context) => Dialog(
                child: Text("Ooops.. Something get Wrong"),
              ));
    }
  }

  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }

  Future<void> _getHttpCity() async {
    final response = await http.get("$baseUrl/flight.json");
    switch (response.statusCode) {
      case HttpStatus.ok:
        final jsonBody = jsonDecode(response.body);
        if (jsonBody is List) {
          httpFlights = jsonBody.map((e) => FlightsModel.fromJson(e)).toList();
        }

        break;
      default:
    }
  }
}
