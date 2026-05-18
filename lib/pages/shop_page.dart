import 'package:ecommerce_app_ui/Models/Cart.dart';
import 'package:ecommerce_app_ui/Models/Shoe.dart';
import 'package:ecommerce_app_ui/components/shoe_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {


  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    
    showDialog(
        context: context,
        builder: (context)=>AlertDialog(
            title: Text("successfully added"),
            content: Text("Check your cart"),
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Center(
        child: Column(
          children: [
            // search bar
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Search"),
                  Icon(Icons.search),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Text(
                "everyone flies.. some fly longer then other",
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    "HOT PICKs",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "show all",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            Expanded(
              child: ListView.builder(
                itemCount: value.getShoeList().length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  Shoe shoe = value.getShoeList()[index];

                  return ShoeTile(
                    shoe: shoe,
                    onTap: ()=> addShoeToCart(shoe),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}