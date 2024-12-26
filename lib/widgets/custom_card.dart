import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset('name'),
          const Text('Product name'),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_shopping_cart),
          )
        ],
      ),
    );
  }
}
