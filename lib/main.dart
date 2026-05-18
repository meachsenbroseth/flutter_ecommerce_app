import 'package:ecommerce_app_ui/pages/home_page.dart';
import 'package:ecommerce_app_ui/pages/intro_page.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroPage(),
    );
  }
}
