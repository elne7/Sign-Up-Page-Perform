import 'package:flutter/material.dart';
import 'package:simple_shopping_app/widgets/custom_card.dart';

class CustomGridView extends StatelessWidget {
  CustomGridView({super.key});

  final List<Map<String, String>> products = [
    {"image": "assets/images/Camera.jpg", "productName": "Camera"},
    {"image": "assets/images/Earpods.jpg", "productName": "Earpods"},
    {
      "image": "assets/images/ExternalDesk.jpg",
      "productName": "External HardDesk"
    },
    {"image": "assets/images/IPhone.jpg", "productName": "IPhone"},
    {"image": "assets/images/Microphone.jpg", "productName": "Microphone"},
    {"image": "assets/images/Headphone.jpg", "productName": "Headphone"},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 6,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) => CustomCard(
        image: products[index]['image']!,
        productName: products[index]['productName']!,
      ),
    );
  }
}
