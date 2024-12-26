import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.image, this.offerName});

  final String image;
  final String? offerName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      height: 200,
      child: Column(
        children: [
          Image.asset(image),
          Text(offerName ?? ''),
        ],
      ),
    );
  }
}
