import 'package:flutter/material.dart';
import 'package:simple_shopping_app/views/home_view.dart';

void main() {
  runApp(const SimpleShoppingApp());
}

class SimpleShoppingApp extends StatelessWidget {
  const SimpleShoppingApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Simple Shopping App',
      home: HomeView(),
    );
  }
}
