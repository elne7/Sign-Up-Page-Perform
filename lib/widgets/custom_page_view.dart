import 'package:flutter/material.dart';
import 'package:simple_shopping_app/widgets/custom_container.dart';

class CustomPageView extends StatelessWidget {
  CustomPageView({super.key});

  final List<String> images = [
    'assets/images/PageView1.jpg',
    'assets/images/PageView2.jpg',
    'assets/images/PageView3.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (context, index) {
        return CustomContainer(image: images[index]);
      },
    );
  }
}
