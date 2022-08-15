import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  final systemColor =  SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.grey[900],
    statusBarColor:const  Color(0xFFCBCBCB),
  );
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(systemColor);
    return const Scaffold(
      body: Center(
        child: Text("Products not added in Cart"),
      ),
    );
  }
}
