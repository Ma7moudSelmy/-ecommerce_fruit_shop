import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_fruit_shop/Models/Model.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  State<Homescreen> createState() => _MyWidgetState();
}

List<String> imageList = [
  'assets/Slider 1.png',
  'assets/Slider 2.png',
  'assets/Slider 3.png',
];

List<categorymodels> categoryList = [
  categorymodels(image: 'assets/image 39.png', name: 'Milk'),
  categorymodels(image: 'assets/image 37.png', name: 'Vegetables'),

  categorymodels(image: 'assets/image 38.png', name: 'Fruits'),
  categorymodels(image: 'assets/image 41.png', name: 'Meat'),
  categorymodels(image: 'assets/image 42.png', name: 'Fish'),


];

class _MyWidgetState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 199, 200, 202),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 210, 247),
        actions: [
          IconButton(
            icon: const Icon(Icons.motorcycle),
            onPressed: () {},
          ),
          const Text(
            "Selmy Store",
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 5.0),

            CarouselSlider.builder(
              itemCount: imageList.length,
              itemBuilder: (context, itemIndex, _) =>
                  Image.asset(imageList[itemIndex], fit: BoxFit.cover),
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                autoPlayInterval: const Duration(seconds: 3),
                scrollDirection: Axis.horizontal,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: const Duration(seconds: 1),
              ),
            ),

            const SizedBox(height: 10.0),

            SizedBox(
              height: 120,
              child: ListView(
                physics: ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: List.generate(categoryList.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                          ),
                          width: 70,
                          height: 70,
                          child: Image.asset(
                            categoryList[index].image,
                            width: 60,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(categoryList[index].name),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
