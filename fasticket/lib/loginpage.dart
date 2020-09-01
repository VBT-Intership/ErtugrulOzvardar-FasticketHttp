import 'package:fasticket/profile.dart';
import 'package:flutter/material.dart';



class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: buildColumn(),

    );
  }

  Column buildColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
    Expanded(flex:1,child: buildLoginPageImage()),
    Expanded(flex:2,child: paddingTitleIcon()),
    Expanded(flex:1,child: buildEmail()),
    Expanded(flex:1,child: buildPassword()),
    Expanded(flex:1,child: paddingLoginButton()),
    Expanded(flex:1,child: buildLoginPageImage()),],);
  }

  SizedBox buildLoginPageImage() => SizedBox(child: Image(image: AssetImage('assets/loginpage2.png'),fit:BoxFit.fitWidth));

  Padding paddingTitleIcon() {
    return Padding(
    padding: const EdgeInsets.symmetric(horizontal:75),
    child: buildTitleTextAndIcon(),
  );
  }

    Row buildTitleTextAndIcon() {
    return Row(
    children: [
      buildTitle(),
      buildIcon(),
    ],
  );
  }

  Text buildTitle() => Text("FASTICKET", style: TextStyle(color: Colors.blue[600], fontWeight: FontWeight.bold, fontSize: 40),);
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


  Padding paddingLoginButton() {
    return Padding(
    padding: const EdgeInsets.only(right:90,left:90, bottom:55),
    child: buildLoginButton(),
  );
  }
  RaisedButton buildLoginButton() => RaisedButton(
    onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()));},
    child: const Text("Login", style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),color: Colors.blue, splashColor: Colors.deepOrangeAccent,);

}