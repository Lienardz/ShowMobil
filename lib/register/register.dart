import 'package:flutter/material.dart';

import 'componenty/body.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);
  static String routeName = "/register";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Body(),
    );
  }
}
