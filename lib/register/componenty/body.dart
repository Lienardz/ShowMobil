import 'package:flutter/material.dart';
import 'package:sewa_mobil/component/defaultbutton.dart';
import 'package:sewa_mobil/component/error.dart';
import 'package:sewa_mobil/constants.dart';
import 'package:sewa_mobil/register/componenty/registerform.dart';
import 'package:sewa_mobil/size_config.dart';

import '../../component/customsuffixicon.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.03),
              Text(
                "Register Account",
                style: headingStyle,
              ),
              Text(
                "Please register with new data and \ncomplete your details",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              RegisterForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              Text(
                "By continuing your confirm that you agree \nwith our Term and condition",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
