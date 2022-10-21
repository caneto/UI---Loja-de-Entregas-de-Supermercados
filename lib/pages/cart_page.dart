import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {

  const CartPage({ Key? key }) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
   @override
   Widget build(BuildContext context) {
       return Scaffold(
           body: ListView(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back,
                  size: 2,
                ),
              ),
            ]
           ),
       );
  }
}