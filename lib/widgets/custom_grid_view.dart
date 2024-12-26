import 'package:flutter/material.dart';
import 'package:simple_shopping_app/widgets/custom_card.dart';

class CustomGridView extends StatelessWidget {
  CustomGridView({super.key});

  final List<Map<String, String>> products = [
    {"image": "assets/images/Camera.jpg", "productName": "Camera"},
    {"image": "assets/images/Earpods.jpg", "productName": "Earpods"},
    {
      "image": "assets/images/ExternalDesk.jpg",
      "productName": "External\nHardDesk"
    },
    {"image": "assets/images/IPhone.jpg", "productName": "IPhone"},
    {"image": "assets/images/Microphone.jpg", "productName": "Microphone"},
    {"image": "assets/images/Headphone.jpg", "productName": "Headphone"},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: GridView.builder(
        itemCount: 6,
        clipBehavior: Clip.none,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          crossAxisSpacing: 15,
          mainAxisSpacing: 100,
        ),
        itemBuilder: (context, index) => CustomCard(
          image: products[index]['image']!,
          productName: products[index]['productName']!,
        ),
      ),
    );
  }
}
