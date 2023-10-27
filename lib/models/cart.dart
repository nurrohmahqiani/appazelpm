import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/electric.dart';

class Cart extends ChangeNotifier {
  //list produc for sale
  List<Electric> electricShop = [
    Electric(
      name: 'Light Bublb',
      price: 'Rp8.000',
      description: 'Lampu 8 watt',
      imagePath: 'lib/images/bulb.jpeg',
    ),
    Electric(
        name: 'Lampu',
        price: 'Rp25.000',
        description: 'Lampu 15 watt 6500K',
        imagePath: 'lib/images/LampuLingkar.jpeg'),
    Electric(
        name: 'Stopkontak',
        price: 'Rp35.000',
        description: '3 Lubang stopkontak dengan panjang kabel 1,5 meter',
        imagePath: 'lib/images/stopkontak.jpeg'),
    Electric(
        name: 'Steker hitam',
        price: 'Rp5.000',
        description: 'Steker dengan 2 kaki ',
        imagePath: 'lib/images/steker.jpeg'),
    Electric(
        name: 'Kabel etherna',
        price: 'Rp10.000',
        description: 'Harga untuk setiap 1 meter',
        imagePath: 'lib/images/cable.jpeg'),
  ];

  //list of items in user cart
  List<Electric> userCart = [];

  // get list of produk for sale
  List<Electric> getElectricList() {
    return electricShop;
  }

  //get cart
  List<Electric> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Electric electric) {
    userCart.add(electric);
    notifyListeners();
  }

  //remove item from car
  void removeItemFromCart(Electric electric) {
    userCart.remove(electric);
    notifyListeners();
  }
}
