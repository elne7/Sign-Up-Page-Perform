import 'package:flutter/material.dart';
import 'package:simple_shopping_app/widgets/custom_card.dart';
import 'package:simple_shopping_app/widgets/custom_offer_container.dart';

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
          PageView(
            children: [
              SizedBox(
                height: 200,
                child: Image.asset('name'),
              ),
              SizedBox(
                height: 200,
                child: Image.asset('name'),
              ),
              SizedBox(
                height: 200,
                child: Image.asset('name'),
              ),
            ],
          ),
          GridView.builder(
            itemCount: 4,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) => const CustomCard(),
          ),
          const Text(
            "Our Offers",
            style: TextStyle(fontSize: 20),
          ),
          ListView.builder(itemBuilder: (context, index) {
            return const CustomOfferContainer();
          },)
        ],
      ),
    );
  }
}
