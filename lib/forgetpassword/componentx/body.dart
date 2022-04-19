import 'package:flutter/material.dart';
import 'package:sewa_mobil/component/customsuffixicon.dart';
import 'package:sewa_mobil/component/defaultbutton.dart';
import 'package:sewa_mobil/component/noaccount.dart';
import 'package:sewa_mobil/constants.dart';
import 'package:sewa_mobil/size_config.dart';
import 'package:sewa_mobil/component/error.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Please enter your email and we will send \nlink to reset your password",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              ForgetPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgetPassForm extends StatefulWidget {
  const ForgetPassForm({Key? key}) : super(key: key);

  @override
  State<ForgetPassForm> createState() => _ForgetPassFormState();
}

class _ForgetPassFormState extends State<ForgetPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? email;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailEmptyError)) {
                setState(() {
                  errors.remove(kEmailEmptyError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              return null;
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailEmptyError)) {
                setState(() {
                  errors.add(kEmailEmptyError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSuffixIcon(
                svgIcon: "assets/Iconic/mails.svg",
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          Error(errors: errors),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {}
            },
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          NoAccount(),
        ],
      ),
    );
  }
}
