import 'package:flutter/material.dart';
import 'package:simple_shopping_app/widgets/custom_grid_view.dart';
import 'package:simple_shopping_app/widgets/custom_list_view.dart';
import 'package:simple_shopping_app/widgets/custom_page_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
          CustomGridView(),
          const Text(
            "Our Offers",
            style: TextStyle(fontSize: 20),
          ),
          CustomListView(),
        ],
      ),
    );
  }
}
