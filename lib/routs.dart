import 'package:flutter/material.dart';
import 'package:sewa_mobil/forgetpassword/forgetpassword.dart';
import 'package:sewa_mobil/homescreen/homescreen.dart';
import 'package:sewa_mobil/login/login.dart';
import 'package:sewa_mobil/register/register.dart';
import 'package:sewa_mobil/screens/splashscreen.dart';

final Map<String, WidgetBuilder> routes = {
  Splashscreen.routeName: (context) => Splashscreen(),
  Login.routeName: (context) => Login(),
  ForgetPassword.routeName: (context) => ForgetPassword(),
  Register.routeName: (context) => Register(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
