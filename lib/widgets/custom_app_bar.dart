import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text(
        "Shopping App",
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.blue,
      elevation: 4,
    );
  }
}
