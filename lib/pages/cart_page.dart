import 'package:ecommerce_app_ui/Models/Cart.dart';
import 'package:ecommerce_app_ui/Models/Shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CratPage extends StatefulWidget {
  const CratPage({super.key});

  @override
  State<CratPage> createState() => _CratPageState();
}

class _CratPageState extends State<CratPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          const Text(
            "My Cart",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),

          const SizedBox(height: 24),

          Expanded(
            child: ListView.builder(
              itemCount: value.getUserCart().length,
              itemBuilder: (context, index) {
                Shoe individualShoe = value.getUserCart()[index];

                return ListTile(
                  leading: Image.asset(individualShoe.imagePath),
                  title: Text(individualShoe.name),
                  subtitle: Text(individualShoe.price),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      value.removeFromCart(individualShoe);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}