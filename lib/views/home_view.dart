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
      // Creating the app bar
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Shopping App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        elevation: 4,
      ),
      // Creating the body of the app
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView( // Make the page scrollable
          child: Column(
            children: [
              const CustomText(text: 'Our Products'),
              const SizedBox( // Add space between widgets
                height: 5,
              ),
              CustomPageView(), // Display a page view
              CustomGridView(), // Display a grid view
              const SizedBox(
                height: 30,
              ),
              const CustomText(text: 'Our Offers'),
              CustomListView(), // Display a list view
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
