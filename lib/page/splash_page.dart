import 'package:e_commerce_app/page/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'img/logo.png',
              height: 200,
              width: 200,
            ),
            SizedBox(height: 10),
            Text(
              'Welcome to the biggest and best haircut shop in Eorzea!',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(height: 20),
            IconButton(
              focusColor: Colors.white,
              iconSize: 40,
              color: Colors.white,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              icon: Icon(Icons.arrow_forward),
            )
          ],
        ),
      ),
    );
  }
}
