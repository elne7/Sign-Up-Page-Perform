import 'package:flutter/material.dart';
import 'package:simple_shopping_app/widgets/custom_grid_view.dart';
import 'package:simple_shopping_app/widgets/custom_list_view.dart';
import 'package:simple_shopping_app/widgets/custom_page_view.dart';
import 'package:simple_shopping_app/widgets/custom_text.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomText(text: 'Our Products'),
              const SizedBox(
                height: 5,
              ),
              CustomPageView(),
              CustomGridView(),
              const SizedBox(
                height: 30,
              ),
              const CustomText(text: 'Our Offers'),
              CustomListView(),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
