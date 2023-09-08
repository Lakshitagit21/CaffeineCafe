import 'package:caffine_cafe/models/drink.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  final Drink drink;
  const OrderPage({super.key, required this.drink});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.drink.name)),
      backgroundColor: Colors.brown[200],
      body: Column(children: [
        //drink image

        Image.asset(
          widget.drink.imagePath,
        ),

        //sliders
        

        //add to cart button
      ]),
    );
  }
}
