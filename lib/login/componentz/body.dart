import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sewa_mobil/component/customsuffixicon.dart';
import 'package:sewa_mobil/component/defaultbutton.dart';
import 'package:sewa_mobil/component/noaccount.dart';
import 'package:sewa_mobil/constants.dart';
import 'package:sewa_mobil/login/componentz/loginform.dart';
import 'package:sewa_mobil/register/register.dart';
import 'package:sewa_mobil/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              Text(
                "Welcome!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(29),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Log in with your email and password",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              LoginForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              NoAccount(),
            ]),
          ),
        ),
      ),
    );
  }
}
