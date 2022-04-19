import 'package:flutter/material.dart';
import 'package:sewa_mobil/constants.dart';
import 'package:sewa_mobil/details/details.dart';
import 'package:sewa_mobil/homescreen/componentu/cardlist.dart';
import 'package:sewa_mobil/homescreen/componentu/categories.dart';
import 'package:sewa_mobil/models/Product.dart';
import 'package:sewa_mobil/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Welcome!",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(40)),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPadding,
                crossAxisSpacing: kDefaultPadding,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => CardList(
                  product: products[index],
                  press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Details(
                            product: products[index],
                          ),
                        ),
                      )),
            ),
          ),
        ),
      ],
    );
  }
}
