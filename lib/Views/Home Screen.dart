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

List<prodcetmodels> prodcet = [
  prodcetmodels(
    image: "assets/image 44.png",
    name: "Banana",
    price: "3.9",
    rate: "3",
  ),
  prodcetmodels(
    image: "assets/image 42.png",
    name: "Pepper",
    price: "2.9",
    rate: "1",
  ),
  prodcetmodels(
    image: "assets/image 43.png",
    name: "Orange",
    price: "2.9",
    rate: "4.8",
  ),
];

class _MyWidgetState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 199, 200, 202),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 210, 247),
        actions: [
          IconButton(icon: const Icon(Icons.motorcycle), onPressed: () {}),
          const Text(
            "Selmy Store",
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {}),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 5.0),

            /// Slider
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

            /// Categories
            SizedBox(
              height: 120,
              child: ListView(
                physics: const ScrollPhysics(),
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
                        Text(
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          categoryList[index].name,
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),

            const SizedBox(height: 15),

            /// Section Title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Popular Products",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            /// Products Grid
           /// سكشن المنتجات - بعد الكاتيجوري
const SizedBox(height: 15),



SizedBox(
  height: 230, // ارتفاع الكارد
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: prodcet.length,
    itemBuilder: (context, index) {
      return Container(
        width: 160, // عرض كل كارت منتج
        margin: const EdgeInsets.only(left: 8, right: 8),
        child: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    prodcet[index].image,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  prodcet[index].name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text("\$${prodcet[index].price}"),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.star, size: 16, color: Colors.orange),
                    const SizedBox(width: 4),
                    Text("${prodcet[index].rate}"),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  ),
),


            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
