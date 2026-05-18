import 'package:ecommerce_app_ui/Models/Shoe.dart';
import 'package:ecommerce_app_ui/components/shoe_tile.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          //search bar
          Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Search"), Icon(Icons.search)],
            ),
          ),

          //just a random text
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Text(
              "everyone flies.. some fly longer then other",
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),

          //hot picks
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "HOT PICKs ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text("show all", style: TextStyle(fontWeight:  FontWeight.bold, color: Colors.blue),)
              ],
            ),
          ),

          //product

          const SizedBox(height: 25,),

          Expanded(
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  Shoe shoe = Shoe(name: "Nike Air Max", price:  "\$120", imagePath: "lib/images/shoe.jpg",desc: "Comfortable running shoe");
                  return ShoeTile(
                    shoe: shoe,);
                },
          )
          )

        ],
      ),
    );
  }
}
