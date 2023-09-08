import 'package:flutter/material.dart';

import 'drink.dart';

class CoffeeShop extends ChangeNotifier {
  //ist of drinks for sale
  final List<Drink> _shop = [
    //iced-coffee
    Drink(
      name: "Iced- Coffee",
      price: "4.00",
      imagePath: "lib/images/iced-coffee.png",
    ),
    Drink(
      name: "Bubbled-Coffee",
      price: "5.00",
      imagePath: "lib/images/bubble-tea.png",
    ),
    Drink(
      name: "Coffee",
      price: "5.00",
      imagePath: "lib/images/coffee.png",
    ),
    Drink(
      name: "Black-Coffee",
      price: "5.20",
      imagePath: "lib/images/hot-coffee.png",
    ),
    Drink(
      name: "Latte",
      price: "4.40",
      imagePath: "lib/images/latte.png",
    ),
    Drink(
      name: "Oreo-Shake",
      price: "4.40",
      imagePath: "lib/images/iced-coffee.png",
    ),
    Drink(
      name: "Espresso",
      price: "4.50",
      imagePath: "lib/images/latte.png",
    ),
  ];

  //list of drinks in user cart
  final List<Drink> _userCart = [];

  //get drinks for sale
  List<Drink> get shop => _shop;

  //get user cart
  List<Drink> get cart => _userCart;

  //add drink to cart
  void addToCart(Drink drink) {
    _userCart.add(drink);
    notifyListeners();
  }

  //remove  drink from cart
  void removeFromCart(Drink drink) {
    _userCart.remove(drink);
    notifyListeners();
  }
}
