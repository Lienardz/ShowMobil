import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sewa_mobil/constants.dart';
import 'package:sewa_mobil/details/componentt/body.dart';
import 'package:sewa_mobil/models/Product.dart';

class Details extends StatelessWidget {
  final Product? product;
  const Details({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product!.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product!.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/Iconic/Leftarrow.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        SizedBox(
          width: kDefaultPadding / 2,
        ),
      ],
    );
  }
}
