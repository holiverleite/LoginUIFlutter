import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CreateAccountPage();
  }
}

class CreateAccountPage extends StatefulWidget {
  final String title;

  CreateAccountPage({Key key, this.title}) : super(key: key);

  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}


class _CreateAccountPageState extends State<CreateAccountPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat',fontSize: 20.0);

  @override
  Widget build(BuildContext context) {

    final nameField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Nome",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0)
        )
      ),
    );

    final lastNameField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Sobrenome",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0))
      ),
    );

    final emailField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Email",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0))
      ),
    );

    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Password",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0))
      ),
    );

    final retypePasswordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Repita o Password",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0))
      ),
    );

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(6.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          // ACTION
        },
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style: style.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Criar conta"),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(36.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 25.0),
              nameField,
              SizedBox(height: 25.0),
              lastNameField,
              SizedBox(height: 25.0),
              emailField,
              SizedBox(height: 25.0,),
              passwordField,
              SizedBox(height: 25.0),
              retypePasswordField,
              SizedBox(height: 25.0),
              
              loginButton
            ],
          ),
        ),
      )
    );
  }
}