import 'package:flutter/material.dart';

class Products {
  final String title, image, description, price;

  Products({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  });
}

List demoProducts = [
  Products(
    image: "assets/images/expresso.png",
    title: "Double Expresso",
    description:
        "Coffee is a drink prepared from roasted coffee beans. in Darkly colored, bitter, and slightly acidic, coffee has a ut stimulating effect on humans, primarily due to its caffeine content. It has the highest sales in the world market for hot drinks.",
    price: "\$ 8.3",
  ),
  Products(
    image: "assets/images/black-coffee.jpg",
    title: "Macchiato coffee",
    description:
        "Coffee is a drink prepared from roasted coffee beans. in Darkly colored, bitter, and slightly acidic, coffee has a ut stimulating effect on humans, primarily due to its caffeine content. It has the highest sales in the world market for hot drinks.",
    price: "\$ 4.3",
  ),
];