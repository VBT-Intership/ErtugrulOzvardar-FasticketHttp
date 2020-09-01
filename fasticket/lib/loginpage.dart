import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(children: [
      Text("BUSTICKET"),
      TextField(decoration:
      InputDecoration(icon: Icon(Icons.mail_outline, color: Colors.grey[600]),
                      hintText: "Enter your email:"),),
      TextField(decoration:
      InputDecoration(icon: Icon(Icons.lock_outline, color: Colors.grey[600],),
                      hintText: "Password:"),)],)

    );
  }
}