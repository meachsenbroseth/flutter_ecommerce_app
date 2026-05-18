import 'package:flutter/material.dart';

class CratPage extends StatefulWidget {
  const CratPage({super.key});

  @override
  State<CratPage> createState() => _CratPageState();
}

class _CratPageState extends State<CratPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Cart Page"),
    );
  }
}
