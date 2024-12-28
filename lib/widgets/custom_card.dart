import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.image, required this.productName});

  final String image;
  final String productName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      clipBehavior: Clip.none,
      child: Row(
        children: [
          Image.asset(
            image,
            height: 110,
          ),
          const SizedBox(
            width: 18,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AutoSizeText(
                productName,
                style: const TextStyle(fontSize: 16),
                minFontSize: 14,
                overflow: TextOverflow.ellipsis,
              ),
              IconButton(
                onPressed: () {
                  const snackBar = SnackBar(
                    content: Text('Item added to the cart'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                icon: const Icon(Icons.add_shopping_cart),
              )
            ],
          )
        ],
      ),
    );
  }
}
