import 'package:flutter/material.dart';
import 'package:sewa_mobil/screens/components/body.dart';
import 'package:sewa_mobil/size_config.dart';

class Splashscreen extends StatelessWidget {
  static String routeName = '/spllash';
  const Splashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
