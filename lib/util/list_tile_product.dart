import 'package:flutter/material.dart';

class ListTileProduct extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String productDescription;
  final double productPrice;
  final VoidCallback? onPressed;
  const ListTileProduct(
      {super.key,
      required this.imagePath,
      required this.productName,
      required this.productDescription,
      required this.productPrice,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 300,
      //height: 200,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              imagePath,
            ),
          ),
          SizedBox(height: 10),
          Text(
            productName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          Text(
            productDescription,
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
          Spacer(),
          Row(
            children: [
              Text(
                '\$${productPrice.toStringAsFixed(2)}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: onPressed,
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.black,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
