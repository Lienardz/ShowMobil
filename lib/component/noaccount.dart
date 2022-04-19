import 'package:flutter/material.dart';
import 'package:sewa_mobil/constants.dart';
import 'package:sewa_mobil/register/register.dart';
import 'package:sewa_mobil/size_config.dart';

class NoAccount extends StatelessWidget {
  const NoAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Dont have an account? ",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () => Navigator.popAndPushNamed(context, Register.routeName),
          child: Text(
            "Register ",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: kSecondaryColor),
          ),
        ),
      ],
    );
  }
}
