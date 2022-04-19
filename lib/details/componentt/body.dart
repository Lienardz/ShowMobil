import 'package:flutter/material.dart';
import 'package:sewa_mobil/constants.dart';
import 'package:sewa_mobil/details/componentt/productandimage.dart';
import 'package:sewa_mobil/details/componentt/release.dart';
import 'package:sewa_mobil/details/componentt/rentcar.dart';
import 'package:sewa_mobil/details/componentt/rentcounter.dart';
import 'package:sewa_mobil/homescreen/componentu/description.dart';
import 'package:sewa_mobil/models/Product.dart';

class Body extends StatelessWidget {
  final Product? product;

  const Body({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Release(product: product),
                      SizedBox(height: kDefaultPadding / 2),
                      Description(product: product),
                      SizedBox(height: kDefaultPadding / 2),
                      RentCounter(),
                      SizedBox(height: kDefaultPadding / 2),
                      RentCar(product: product),
                      SizedBox(height: kDefaultPadding / 2),
                    ],
                  ),
                ),
                ProductTittleAndImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
