import 'package:flutter/material.dart';
import 'package:plants_store/shared/sizes.dart';

class NavBarS extends StatelessWidget {
  final bool homeV;
  final bool favoriteV;
  final bool cartV;
  final bool profileV;

  const NavBarS({
    super.key,
    this.homeV = false,
    this.favoriteV = false,
    this.cartV = false,
    this.profileV = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(bottom: 0.4),
      height: context.ScreenHeight * 0.1,
      width: context.ScreenWidth * 0.87,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: context.ScreenHeight * 0.03),
            child: Container(
              height: context.ScreenHeight * 0.072,
              width: context.ScreenWidth * 0.87,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xFF266549),
                borderRadius: BorderRadius.circular(35),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/discover");
                    },
                    icon: Icon(
                      Icons.home_outlined,
                      color: Color(0xFFFFFFFF),
                      size: context.ScreenWidth * 0.1,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/favorits");
                    },
                    icon: Icon(
                      Icons.favorite_border_rounded,
                      color: Color(0xFFFFFFFF),
                      size: context.ScreenWidth * 0.09,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/cart");
                    },
                    icon: Icon(
                      Icons.shopping_bag_outlined,
                      color: Color(0xFFFFFFFF),
                      size: context.ScreenWidth * 0.09,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/profile");
                    },
                    icon: Icon(
                      Icons.person_outline_rounded,
                      color: Color(0xFFFFFFFF),
                      size: context.ScreenWidth * 0.1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: homeV,
            child: Padding(
              padding: EdgeInsets.only(
                left: context.ScreenWidth * 0.05,
                top: context.ScreenHeight * 0.008,
              ),
              child: Container(
                height: context.ScreenHeight * 0.08,
                width: context.ScreenWidth * 0.179,
                decoration: BoxDecoration(
                  color: Color(0xFF266549),
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(
                    color: Color(0xFFFFFFFF),
                    width: context.ScreenWidth * 0.014,
                  ),
                  boxShadow: [
                    BoxShadow(color: Color(0xFFFFFFFF), blurRadius: 5),
                  ],
                ),
                child: Icon(
                  Icons.home_outlined,
                  color: Color(0xFFFFFFFF),
                  size: context.ScreenWidth * 0.1,
                ),
              ),
            ),
          ),
          Visibility(
            visible: favoriteV,
            child: Padding(
              padding: EdgeInsets.only(
                left: context.ScreenWidth * 0.25,
                top: context.ScreenHeight * 0.008,
              ),
              child: Container(
                height: context.ScreenHeight * 0.08,
                width: context.ScreenWidth * 0.179,
                decoration: BoxDecoration(
                  color: Color(0xFF266549),
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(
                    color: Color(0xFFFFFFFF),
                    width: context.ScreenWidth * 0.014,
                  ),
                  boxShadow: [
                    BoxShadow(color: Color(0xFFFFFFFF), blurRadius: 6),
                  ],
                ),
                child: Icon(
                  Icons.favorite_border_rounded,
                  color: Color(0xFFFFFFFF),
                  size: context.ScreenWidth * 0.1,
                ),
              ),
            ),
          ),
          Visibility(
            visible: cartV,
            child: Padding(
              padding: EdgeInsets.only(
                left: context.ScreenWidth * 0.45,
                top: context.ScreenHeight * 0.008,
              ),
              child: Container(
                height: context.ScreenHeight * 0.08,
                width: context.ScreenWidth * 0.179,
                decoration: BoxDecoration(
                  color: Color(0xFF266549),
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(
                    color: Color(0xFFFFFFFF),
                    width: context.ScreenWidth * 0.014,
                  ),
                  boxShadow: [
                    BoxShadow(color: Color(0xFFFFFFFF), blurRadius: 6),
                  ],
                ),
                child: Icon(
                  Icons.shopping_bag_outlined,
                  color: Color(0xFFFFFFFF),
                  size: context.ScreenWidth * 0.09,
                ),
              ),
            ),
          ),
          Visibility(
            visible: profileV,
            child: Padding(
              padding: EdgeInsets.only(
                left: context.ScreenWidth * 0.65,
                top: context.ScreenHeight * 0.008,
              ),
              child: Container(
                height: context.ScreenHeight * 0.08,
                width: context.ScreenWidth * 0.179,
                decoration: BoxDecoration(
                  color: Color(0xFF266549),
                  borderRadius: BorderRadius.circular(35),
                  border: Border.all(
                    color: Color(0xFFFFFFFF),
                    width: context.ScreenWidth * 0.014,
                  ),
                  boxShadow: [
                    BoxShadow(color: Color(0xFFFFFFFF), blurRadius: 6),
                  ],
                ),
                child: Icon(
                  Icons.person_outline_rounded,
                  color: Color(0xFFFFFFFF),
                  size: context.ScreenWidth * 0.1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
