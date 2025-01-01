import 'package:flutter/material.dart';
// import 'package:simple_shopping_app/views/home_view.dart';
import 'package:simple_shopping_app/views/sign_up_view.dart';

void main() {
  runApp(const SimpleShoppingApp());
}

class SimpleShoppingApp extends StatelessWidget {
  const SimpleShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Remove the debug sign from the screen
      title: 'Simple Shopping App',
      home: SignUpView(), // Displaying the Home View page
    );
  }
}
