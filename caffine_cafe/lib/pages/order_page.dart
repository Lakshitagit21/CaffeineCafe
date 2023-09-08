import 'package:caffine_cafe/models/drink.dart';
import 'package:caffine_cafe/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderPage extends StatefulWidget {
  final Drink drink;
  const OrderPage({super.key, required this.drink});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  double sweetValue = 0.5;
  void customizeSweet(double newValue) {
    setState(() {
      sweetValue = newValue;
    });
  }

  double iceValue = 0.5;
  void customizeIce(double newValue) {
    setState(() {
      iceValue = newValue;
    });
  }

  double PearlsValue = 0.5;
  void customizePearls(double newValue) {
    setState(() {
      PearlsValue = newValue;
    });
  }

  void addToCart() {
    Provider.of<CoffeeShop>(context, listen: false).addToCart(widget.drink);

    Navigator.pop(context);

    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              title: Text('Successfully added to the cart!'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.drink.name)),
      backgroundColor: Colors.brown[200],
      body: Column(children: [
        //drink image

        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Image.asset(
            widget.drink.imagePath,
          ),
        ),

        //sliders
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 100, child: Text('Sweet')),
                  Expanded(
                    child: Slider(
                      value: sweetValue,
                      label: sweetValue.toString(),
                      divisions: 4,
                      onChanged: (value) => customizeSweet(value),
                    ),
                  ),
                ],
              ),

              //ice
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 100, child: Text('Ice')),
                  Expanded(
                    child: Slider(
                      value: iceValue,
                      label: iceValue.toString(),
                      divisions: 4,
                      onChanged: (value) => customizeIce(value),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 100, child: Text('Pearls')),
                  Expanded(
                    child: Slider(
                      value: PearlsValue,
                      label: PearlsValue.toString(),
                      divisions: 4,
                      onChanged: (value) => customizePearls(value),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        //add to cart button

        // Add to cart button
        MaterialButton(
          color: Colors.brown,
          padding: const EdgeInsets.only(left: 25, right: 25),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          onPressed: addToCart,
          child: const Text(
            'Add to Cart',
            style: TextStyle(color: Colors.white),
          ),
        )
      ]),
    );
  }
}
