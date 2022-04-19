import 'package:flutter/material.dart';

class Product {
  final String? image, title, description;
  final int? price, size, id;
  final Color? color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "BMW 320i",
      price: 550000,
      size: 2016,
      description:
          "BMW 3 Series Sedan 320i Sport price tag in the Indonesia. 3 Series Sedan 320i Sport is paired with a 8-Speed Automatic transmission. 3 Series Sedan 320i Sport 1998 cc engine offers 184 hp of power and 300 Nm of torque. 3 Series Sedan 320i Sport runs on 18 Inch alloy wheels and its tyre size and type are 245/55 ZR18 and Runflat, respectively.",
      image: "assets/ImageCar/BMW.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Toyota Fortuner",
      price: 450000,
      description:
          "The Toyota Fortuner, also known as the Toyota SW4, is a mid-size SUV manufactured by the Japanese automaker Toyota since 2004. Built on the Hilux pickup truck platform, it features two/three rows of seats and is available in either rear-wheel drive or four-wheel drive configuration.",
      size: 2018,
      image: "assets/ImageCar/Fortuner.png",
      color: Color(0xFF696969)),
  Product(
      id: 3,
      title: "Toyota Corolla",
      description:
          "The  Toyota Corolla boasts great fuel economy, pleasant driving dynamics, user-friendly features, and many standard driver assistance features, but its engine performance is restrained, and it has a small trunk.",
      price: 390000,
      size: 2015,
      image: "assets/ImageCar/Corolla.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Mercedes-Benz SLS AMG",
      description:
          "The SLS AMG GT is an incredibly fast and rare supercar that harkens back to the Gullwings of yore. It’s powered by a 6.2-liter V-8 that makes 583 hp, mated to a seven-speed dual-clutch automatic transmission and rear-wheel drive. Got cash to burn? Opt for the Black Series with 622 hp and other go-fast goodies. No matter your choice, the SLS remains a Mercedes, replete with a luxurious, well-appointed interior.",
      price: 800000,
      size: 2019,
      image: "assets/ImageCar/SlsAMG.png",
      color: Color(0xFFFF0000)),
  Product(
      id: 5,
      title: "Ford Edge",
      description:
          "With the bold design and impressive performance of the 2022 Ford Edge, you’ll never have to sacrifice substance for style again. Plus, the Edge you love now gives you even more with standard all-wheel-drive on every model.",
      price: 550000,
      size: 2020,
      image: "assets/ImageCar/Edge.png",
      color: Color(0xFFFFA500)),
  Product(
    id: 6,
    title: "Hyundai i10",
    price: 200000,
    description:
        "The Petrol engine is 1086 cc and 1197 cc while the LPG engine is 1086 cc . It is available with Manual & Automatic transmission. Depending upon the variant and fuel type the i10 has a mileage of 16.95 to 20.36 kmpl & Ground clearance of i10 is 165mm. The i10 is a 5 seater.",
    size: 2028,
    image: "assets/ImageCar/Hyundai.png",
    color: Color(0xFF6B8E23),
  ),
];
