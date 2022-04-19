import 'package:flutter/material.dart';
import 'package:sewa_mobil/size_config.dart';

const kPrimaryColor = Color(0xFF000000);
const kPrimaryLightColor = Color(0xFFFFF8DC);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFF8C00), Color(0xFFFF7643)],
);

const kSecondaryColor = Color.fromARGB(255, 62, 187, 203);
const kTextColor = Color(0xFF757575);
const kTextLightColor = Color(0xFFACACAC);

const kAnimationDuration = Duration(milliseconds: 200);
const kDefaultPadding = 20.0;

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailEmptyError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassEmptyError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
