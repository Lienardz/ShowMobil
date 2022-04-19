import 'package:flutter/material.dart';
import 'package:sewa_mobil/login/componentz/body.dart';

class Login extends StatelessWidget {
  static String routeName = "/login";
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log In"),
      ),
      body: Body(),
    );
  }
}
