import 'package:e_commerce_app/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
      name: 'Cloud Strife Haircut',
      price: 150.0,
      description: 'Rumour has it that this is the best shop in town.',
      image: 'img/1.png',
    ),
    Product(
      name: 'Snow Villiers Haircut',
      price: 80.0,
      description: 'Rumour has it that this is the best shop in town.',
      image: 'img/2.png',
    ),
    Product(
      name: 'Lightning Farron Haircut',
      price: 120.0,
      description: 'Rumour has it that this is the best shop in town.',
      image: 'img/3.png',
    ),
    Product(
      name: 'Pop Star Haircut',
      price: 70.0,
      description: 'Rumour has it that this is the best shop in town.',
      image: 'img/4.png',
    ),
  ];

  List<Product> _cart = [];

  List<Product> get shop => _shop;

  List<Product> get cart => _cart;

  void addToCart(Product product) {
    _cart.add(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    _cart.remove(product);
    notifyListeners();
  }
}
