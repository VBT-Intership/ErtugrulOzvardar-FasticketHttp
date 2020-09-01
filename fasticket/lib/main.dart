
import 'package:flutter/material.dart';
import 'package:fasticket/view/loginpage.dart';


void main() => runApp(FasticketApp());

class FasticketApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fasticket',
      home: LoginPage(),
    );
  }
}