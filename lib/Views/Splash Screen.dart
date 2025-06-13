import 'package:flutter/material.dart';
import 'package:ecommerce_fruit_shop/Views/Home%20Screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Homescreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color.fromARGB(255, 4, 210, 247),
      body: Center(
        child: Image.asset(
          'assets/download.jpg',
          fit: BoxFit.cover,
          width: 452,
        ),
      ),
    );
  }
}
