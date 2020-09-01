import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: buildColumn()

    );
  }

  Column buildColumn() {
    return Column(children: [
    Expanded(flex:4,child: buildTitleTextAndIcon()),
    Expanded(flex:2,child: buildEmail()),
    Expanded(flex:2,child: buildPassword()),
    Expanded(flex:2,child: buildLoginButton())],);
  }

  RaisedButton buildLoginButton() => RaisedButton(onPressed: () {}, child: const Text("Login"),color: Colors.blue,);


  Row buildTitleTextAndIcon() {
    return Row(
    children: [
      buildTitle(),
      buildIcon(),
    ],
  );
  }

  Text buildTitle() => Text("FASTICKET", style: TextStyle(color: Colors.blue[600], fontWeight: FontWeight.bold, fontSize: 35),);

  Icon buildIcon() => Icon(Icons.blur_on, color:Colors.blue[400], size: 50,);


  TextField buildEmail() {
    return TextField(decoration:
  InputDecoration(icon: Icon(Icons.mail_outline, color: Colors.grey[600]),
                  hintText: "Enter your email:"),);
  }

  TextField buildPassword() {
    return TextField(decoration:
  InputDecoration(icon: Icon(Icons.lock_outline, color: Colors.grey[600],),
                  hintText: "Password:"),obscureText: true,);
  }


}