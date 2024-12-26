import 'package:flutter/material.dart';

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
          GridView.builder(
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) => const Text('data'),
          ),
          const Text(
            "Our Offers",
            style: TextStyle(fontSize: 20),
          ),
          ListView.builder(itemBuilder: (context,index){
            return null;
          
            
          })
        ],
      ),
    );
  }
}
