import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.image, required this.productName});

  final String image;
  final String productName;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(image),
          Text(productName),
          IconButton(
            onPressed: () {
              const SnackBar(
                content: Text('Item added to the cart'),
              );
            },
            icon: const Icon(Icons.add_shopping_cart),
          )
        ],
      ),
    );
  }
}
