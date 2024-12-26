import 'package:flutter/material.dart';
import 'package:simple_shopping_app/widgets/custom_container.dart';

class CustomListView extends StatelessWidget {
  CustomListView({super.key});

  final List<String> offers = [
    'assets/images/Offer1.jpg',
    'assets/images/Offer2.jpg',
    'assets/images/Offer3.jpg',
    'assets/images/Offer4.jpg',
    'assets/images/Offer5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: ListView.builder(
        itemCount: offers.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: CustomContainer(
              image: offers[index],
              offerName: 'Offer ${index + 1}',
            ),
          );
        },
      ),
    );
  }
}
