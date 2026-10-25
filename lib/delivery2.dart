import 'package:flutter/material.dart';
import 'package:plants_store/shared/appbarp.dart';
import 'package:plants_store/shared/Sizes.dart';

class Delivery2 extends StatelessWidget {
  const Delivery2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBarS(titleText: "Delivery", leadingV: true),
      body: Stack(
        children: [
          Image.asset(
            'images/Mapback.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          // SizedBox(height: context.ScreenHeight * 0.8),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: context.ScreenHeight * 0.09,
                width: context.ScreenWidth * 1,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                decoration: BoxDecoration(
                  color: Color(0xE9003A20),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      color: Colors.white,
                      size: context.ScreenHeight * 0.03,
                    ),
                    SizedBox(width: context.ScreenWidth * 0.02),
                    Text(
                      "The order will arrive in 15 minutes",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
