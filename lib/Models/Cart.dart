import 'package:flutter/material.dart';
import 'package:ecommerce_app_ui/Models/Shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: "Nike Air Max",
      price: "\$120",
      imagePath: "lib/images/shoe.jpg",
      desc: "Comfortable running shoe",
    ),
    Shoe(
      name: "Adidas Ultra Boost",
      price: "\$150",
      imagePath: "lib/images/shoe.jpg",
      desc: "Stylish and lightweight",
    ),
    Shoe(
      name: "Puma Sport",
      price: "\$99",
      imagePath: "lib/images/shoe.jpg",
      desc: "Perfect for training",
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}