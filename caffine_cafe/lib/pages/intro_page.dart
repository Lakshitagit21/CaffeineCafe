import 'package:caffine_cafe/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Padding(
              padding: const EdgeInsets.fromLTRB(65, 25, 25, 25),
              child: Image.asset(
                'lib/images/hot-coffee.png',
                height: 160,
              ),
            ),

            const SizedBox(
              height: 40,
            ),

            //text
            const Text(
              'Brew Day',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 73, 49, 40),
                fontSize: 25,
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Text(
                'How do you like your coffee?',
                style: TextStyle(color: Colors.brown),
              ),
            ),

            //button

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    )),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 39, 26, 21),
                      borderRadius: BorderRadius.circular(12)),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text(
                      'Enter Shop',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
