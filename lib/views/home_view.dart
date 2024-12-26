import 'package:flutter/material.dart';
import 'package:simple_shopping_app/widgets/custom_card.dart';
import 'package:simple_shopping_app/widgets/custom_container.dart';
import 'package:simple_shopping_app/widgets/custom_page_view.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Shopping App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        elevation: 4,
      ),
      body: Column(
        children: [
          const Text(
            "Our Products",
            style: TextStyle(fontSize: 20),
          ),
          CustomPageView(),
          GridView.builder(
            itemCount: 6,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) => CustomCard(
              image: products[index]['image']!,
              productName: products[index]['productName']!,
            ),
          ),
          const Text(
            "Our Offers",
            style: TextStyle(fontSize: 20),
          ),
          ListView.builder(
            itemBuilder: (context, index) {
              return const Text('data');
            },
          )
        ],
      ),
    );
  }
}
