import 'package:e_commerce_app/models/shop.dart';
import 'package:e_commerce_app/page/cart_page.dart';
import 'package:e_commerce_app/util/drawer.dart';
import 'package:e_commerce_app/util/list_tile_product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void addToCart(product, shopList) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add this item to your cart?'),
          actions: [
            TextButton(
              onPressed: () {
                context.read<Shop>().addToCart(shopList[product]);
                Navigator.of(context).pop();
              },
              child: Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('No'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final shop = context.watch<Shop>().shop;
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartPage(),
                ),
              );
            },
            icon: const Icon(Icons.card_travel),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Check out the newest haircuts just released!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Check all',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 400,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.hardEdge,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: shop.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTileProduct(
                        imagePath: shop[index].image,
                        productName: shop[index].name,
                        productDescription: shop[index].description,
                        productPrice: shop[index].price,
                        onPressed: () {
                          addToCart(index, shop);
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
