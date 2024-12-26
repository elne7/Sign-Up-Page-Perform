import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.image, required this.productName});

  final String image;
  final String productName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.none,
      child: Row(
        children: [
          Image.asset(
            image,
            height: 100,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(productName),
              IconButton(
                onPressed: () {
                  const snackBar = SnackBar(
                    content: Text('Item added to the cart'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                icon: const Icon(Icons.add_shopping_cart),
              )
            ],
          )
        ],
      ),
    );
  }
}

// Card(
//       child: Column(
//         children: [
//           Image.asset(image, height: 100,),
//           Text(productName),
//           IconButton(
//             onPressed: () {
//               const SnackBar(
//                 content: Text('Item added to the cart'),
//               );
//             },
//             icon: const Icon(Icons.add_shopping_cart),
//           )
//         ],
//       ),
//     );
