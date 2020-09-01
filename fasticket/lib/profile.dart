import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RaisedButton(child: Icon(Icons.arrow_back),onPressed: () {
         Navigator.pop(context);
      },)
    );
  }
}