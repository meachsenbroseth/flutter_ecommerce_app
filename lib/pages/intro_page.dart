import 'package:ecommerce_app_ui/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(70),
                  child: Image.asset('lib/images/nikePNG.png',height: 150,),
                ),
                const SizedBox(height: 48,),
                const Text("Just Do It",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                const Text("Brand new sneaker and custom kicks made with premium quality",style: TextStyle(fontSize: 15, color: Colors.grey),textAlign: TextAlign.center,),

                const SizedBox(height: 48,),

                GestureDetector(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder:(context)=> HomePage())),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(25),
                    child:Center(
                        child: const Text("Shop Now",
                          style: TextStyle(color: Colors.white),
                        )
                    ),
                  
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}
