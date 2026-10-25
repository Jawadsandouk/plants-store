import 'package:flutter/material.dart';
import 'package:plants_store/homepage.dart';
import 'package:plants_store/shared/sizes.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _HomeState();
}

class _HomeState extends State<Welcome> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(235, 234, 247, 241),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: context.ScreenHeight * 0.10),
          Container(
            margin: EdgeInsets.only(
              left: context.ScreenWidth * 0.25,
              top: context.ScreenHeight * 0.18,
            ),
            child: Image.asset('images/image.png', fit: BoxFit.contain),
          ),
          SizedBox(height: context.ScreenHeight * 0.35),
          Container(
            margin: EdgeInsets.only(left: context.ScreenWidth * 0.25),
            child: Text(
              "A touch of nature,",
              style: TextStyle(fontSize: context.ScreenWidth * 0.05),
            ),
          ),
        ],
      ),
    );
  }
}
