import 'package:flutter/material.dart';

import '../models/drink.dart';

// ignore: must_be_immutable
class DrinkTile extends StatelessWidget {
  final Drink drink;
  final Widget trailing;
  void Function()? onTap;
  DrinkTile(
      {super.key,
      required this.drink,
      required this.onTap,
      required this.trailing});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            color: Colors.brown[200], borderRadius: BorderRadius.circular(12)),
        child: ListTile(
          title: Text(drink.name),
          subtitle: Text("\$ ${drink.price}"),
          leading: Image.asset(drink.imagePath),
          trailing: trailing,
        ),
      ),
    );
  }
}
