import 'package:flutter/material.dart';
import 'package:sewa_mobil/models/Product.dart';

import '../../constants.dart';

class Release extends StatelessWidget {
  const Release({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: kTextColor),
              children: [
                TextSpan(
                  text: "Release\n",
                ),
                TextSpan(
                  text: "${product!.size}",
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
