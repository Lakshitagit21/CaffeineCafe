import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: GNav(
          color: const Color.fromRGBO(189, 189, 189, 1),
          mainAxisAlignment: MainAxisAlignment.center,
          activeColor: const Color.fromRGBO(97, 97, 97, 1),
          tabBackgroundColor: const Color.fromRGBO(224, 224, 224, 1),
          tabBorderRadius: 24,
          tabActiveBorder: Border.all(color: Colors.brown),
          onTabChange: (value) => onTabChange!(value),
          textStyle: const TextStyle(color: Colors.brown),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_bag_outlined,
              text: 'Cart',
            ),
          ]),
    );
  }
}
