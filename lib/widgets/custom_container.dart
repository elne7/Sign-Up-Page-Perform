import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.image, this.offerName});

  final String image;
  final String? offerName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: Column(
        children: [
          Image.asset(image),
          Text(offerName ?? ''),
        ],
      ),
    );
  }
}
