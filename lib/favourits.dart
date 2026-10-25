import 'package:flutter/material.dart';
import 'package:plants_store/shared/appbarp.dart';
import 'package:plants_store/shared/navbar.dart';
import 'package:plants_store/shared/sizes.dart';

class FavouritsP extends StatelessWidget {
  const FavouritsP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3FFFA),
      appBar: AppBarS(
        titleText: "My Favourites",
        icon: Icons.notifications_none,
      ),
      body: Container(
        padding: EdgeInsets.only(top: context.ScreenHeight * 0.11),
        height: context.ScreenHeight * 1,
        width: context.ScreenWidth * 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: context.ScreenHeight * 0.25,
              width: context.ScreenWidth * 0.6,
              child: Image.asset("images/fav.png"),
            ),
            Padding(
              padding: EdgeInsets.only(top: context.ScreenHeight * 0.08),
              child: Text(
                "Your favorites list is empty !",
                style: TextStyle(fontSize: context.ScreenWidth * 0.06),
              ),
            ),
            SizedBox(height: context.ScreenHeight * 0.01),
            Text(
              "Discover plants you love and add them here .",
              style: TextStyle(fontSize: context.ScreenWidth * 0.04),
            ),
            SizedBox(
              height: context.ScreenHeight * 0.14,
              width: context.ScreenWidth * 0.5,
              child: Image.asset("images/paper.png", fit: BoxFit.cover),
            ),
            SizedBox(
              height: context.ScreenHeight * 0.055,
              width: context.ScreenWidth * 0.5,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/discover");
                },
                child: Text(
                  "Start Adding",
                  style: TextStyle(
                    fontSize: context.ScreenWidth * 0.063,
                    color: Color(0xFF0b5132),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: context.ScreenHeight * 0.04),
            NavBarS(favoriteV: true),
            // SizedBox(height: context.ScreenHeight * 0.0176),
          ],
        ),
      ),
    );
  }
}
