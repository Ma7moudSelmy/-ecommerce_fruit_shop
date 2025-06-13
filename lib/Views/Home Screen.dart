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
            "Selmy Store",
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 226),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              // Action for shopping cart
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 600),
        physics: ScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 10),

          Image.asset("assets/Slider 3.png"),
          SizedBox(width: 10),
          Image.asset("assets/Slider 2.png"),
          SizedBox(width: 10),
          Image.asset("assets/Slider 1.png"),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
