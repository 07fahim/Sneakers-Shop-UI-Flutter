// ignore_for_file: non_constant_identifier_names, file_names

import 'dart:core';

import 'package:flutter/material.dart';
import 'package:nike_shop/models/sneakers.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Sneakers> sneakersShop = [
    Sneakers(
        name: "NIKE METCON",
        description: "Man's Sneakers",
        imagePath: "lib/images/NIKE+FREE+METCON+6.png",
        price: "\$220"),
    Sneakers(
        name: 'JORDAN MVP',
        price: '\$250',
        imagePath: 'lib/images/JORDAN+MVP.png',
        description: "Man's Sneakers"),
    Sneakers(
        name: "AIR HYPERACE",
        description: "Man's Sneakers",
        imagePath: "lib/images/AIR+ZOOM+HYPERACE+3.png",
        price: "\$260"),
    Sneakers(
        name: "JORDAN STAY LOYAL",
        description: "Man's Sneakers",
        imagePath: "lib/images/JORDAN+STAY+LOYAL+3.png",
        price: "\$260"),
    Sneakers(
        name: "JORDAN TATUM",
        description: "Man's Sneakers",
        imagePath: "lib/images/JORDAN+TATUM+3.png",
        price: "\$300"),
    Sneakers(
        name: "AIR UPTEMPO",
        description: "Man's Sneakers",
        imagePath: "lib/images/AIR+MORE+UPTEMPO+'96.png",
        price: "\$310"),
    Sneakers(
        name: "AIR MAX",
        description: "Man's Sneakers",
        imagePath: "lib/images/NIKE+AIR+MAX+1+ESS.png",
        price: "\$210"),
  ];

  //lists of items user cart
  List<Sneakers> userCart = [];

  //get list of sneakers  for sale
  List<Sneakers> getSneakersList() {
    return sneakersShop;
  }

  //get  cart
  List<Sneakers> getUserCart() {
    return userCart;
  }

  // add items to cart

  void addItemsToCart(Sneakers sneakers) {
    userCart.add(sneakers);
    notifyListeners();
  }

  //remove from the cart

  void removeFromCart(Sneakers sneakers) {
    userCart.remove(sneakers);
    notifyListeners();
  }
}
