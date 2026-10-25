import 'package:flutter/material.dart';
import 'package:plants_store/shared/batten_controler.dart';
import 'package:plants_store/shared/sizes.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/Home.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: context.ScreenWidth * 0.65,
                height: context.ScreenHeight * 0.20,
                margin: EdgeInsets.only(left: context.ScreenWidth * 0.10),
                alignment: Alignment.center,
                child: Text(
                  'THE BEST APP FOR YOUR PLANTS',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFE0DDCF),
                  ),
                ),
              ),
              SizedBox(height: context.ScreenHeight * 0.4),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Batten1(
                        txt: "Log in",
                        tx: Color.fromARGB(232, 255, 255, 255),
                        wh: EdgeInsets.symmetric(
                          horizontal: context.ScreenHeight * 0.13,
                          vertical: context.ScreenHeight * 0.01,
                        ),
                        clr: Color(0x3BFFFEFE),
                        S: "/login",
                        fontWeight: FontWeight.w900,
                        fontSize: 0.024,
                        borderRadius: BorderRadius.circular(45),
                      ),
                      SizedBox(height: context.ScreenHeight * 0.04),
                      Batten1(
                        txt: "Sing up",
                        tx: Color.fromARGB(232, 255, 255, 255),
                        wh: EdgeInsets.symmetric(
                          horizontal: context.ScreenHeight * 0.12,
                          vertical: context.ScreenHeight * 0.01,
                        ),
                        clr: Color(0x3BFFFEFE),
                        S: "/signup",
                        fontWeight: FontWeight.w900,
                        borderRadius: BorderRadius.circular(45),
                        fontSize: 0.024,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
