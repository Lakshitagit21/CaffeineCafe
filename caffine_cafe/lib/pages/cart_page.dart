import 'package:caffine_cafe/components/drink_tile.dart';
import 'package:caffine_cafe/models/drink.dart';
import 'package:caffine_cafe/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Drink drink) {
    Provider.of<CoffeeShop>(context, listen: false).removeFromCart(drink);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              //heading
              const Text(
                'Your Cart',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              //list

              Expanded(
                  child: ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context, index) {
                  Drink drink = value.cart[index];

                  return DrinkTile(
                      drink: drink,
                      onTap: () => removeFromCart(drink),
                      trailing: const Icon(Icons.delete));
                },
              )),
              //button
              MaterialButton(
                color: Colors.brown,
                padding: const EdgeInsets.only(left: 30, right: 30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                onPressed: () {},
                child: const Text(
                  'Pay Now',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
