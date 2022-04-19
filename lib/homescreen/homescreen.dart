import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sewa_mobil/constants.dart';
import 'package:sewa_mobil/homescreen/componentu/body.dart';
import 'package:sewa_mobil/screens/splashscreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = "/homescreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          onPressed: () => Navigator.pushNamed(context, Splashscreen.routeName),
          icon: SvgPicture.asset("assets/Iconic/Leftarrow.svg")),
      actions: <Widget>[
        SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
