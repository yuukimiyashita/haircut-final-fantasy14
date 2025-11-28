import 'package:e_commerce_app/page/cart_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Image.asset('img/logo.png'),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(55),
          //   child: I
          // ),
          Text(
            'In Eorzea or anywhere you need',
            style: TextStyle(
              fontSize: 12,
              fontStyle: FontStyle.italic,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 60),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.card_travel),
            title: const Text('Cart'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartPage(),
                ),
              );
            },
          ),
          Spacer(),
          ListTile(
            hoverColor: Colors.red,
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {},
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
