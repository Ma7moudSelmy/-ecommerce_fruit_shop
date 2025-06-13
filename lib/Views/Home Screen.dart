import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  State<Homescreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 199, 200, 202),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 210, 247),
        actions: [
          IconButton(
            icon: const Icon(Icons.storefront),
            onPressed: () {
              // Action for shopping cart
            },
          ),
          Text(
            "61 Hopper street..",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 230),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // Action for shopping cart
            },
          ),
        ],
      ),
    );
  }
}
