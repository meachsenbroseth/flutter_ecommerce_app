import 'package:ecommerce_app_ui/pages/home_page.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(ECommerceApp());
}


class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
