import 'package:flutter/material.dart';

class CustomOfferContainer extends StatelessWidget {
  const CustomOfferContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8)
      ),
      height: 150,
      child: Column(
        children: [
          Image.asset('name'),
          const Text('Offer name')
        ],
      ),
    );
  }
}