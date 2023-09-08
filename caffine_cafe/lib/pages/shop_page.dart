import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
      
          children: [
      
            //heading
            Text('How do you like your Coffee?', style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold,
            ),
            ),
      
            //list of coffee
            
          ],
        ),
      ),
    );
  }
}