import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class Error extends StatelessWidget {
  const Error({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => ErrorText(error: errors[index])),
    );
  }

  Row ErrorText({String? error}) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/Iconic/Error.svg",
          height: getProportionateScreenHeight(14),
          width: getProportionateScreenWidth(14),
        ),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        Text(error!),
      ],
    );
  }
}
