import 'package:flutter/material.dart';
import 'package:plants_store/shared/batten_controler.dart';
import 'package:plants_store/shared/container.dart';
import 'package:plants_store/shared/appbarp.dart';
import 'package:plants_store/shared/navbar.dart';
import 'package:plants_store/shared/search.dart';
import 'package:plants_store/shared/sizes.dart';

class DiscoverP extends StatelessWidget {
  const DiscoverP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3FFFA),
      appBar: AppBarS(
        leadingV: false,
        nameV: true,
        icon: Icons.notifications_none,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 27, right: 27, top: 10, bottom: 10),
            child: SearchS(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 27, right: 27, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                    color: Color(0xE71B4332),
                    fontSize: context.ScreenHeight * 0.0225,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  'see all',
                  style: TextStyle(
                    color: Color(0xBA27654A),
                    fontSize: context.ScreenHeight * 0.0185,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: context.ScreenHeight * 0.1357,
            width: context.ScreenWidth * 1,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      PContainer(
                        height: 0.103,
                        width: 0.23,
                        color: Color(0xFFD9E3DF),
                        borderRadius: 20,
                        image: "images/asset-1.png",
                      ),
                      Text(
                        'Indoor',
                        style: TextStyle(
                          color: Color(0xD927654A),
                          fontSize: context.ScreenHeight * 0.0185,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Column(
                    children: [
                      PContainer(
                        height: 0.103,
                        width: 0.23,
                        color: Color(0xFFD9E3DF),
                        borderRadius: 20,
                        image: "images/asset-2.png",
                      ),
                      Text(
                        'Outdoor',
                        style: TextStyle(
                          color: Color(0xD927654A),
                          fontSize: context.ScreenHeight * 0.0185,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Column(
                    children: [
                      PContainer(
                        height: 0.103,
                        width: 0.23,
                        color: Color(0xFFD9E3DF),
                        borderRadius: 20,
                        image: "images/asset-1.png",
                      ),
                      Text(
                        'Indoor',
                        style: TextStyle(
                          color: Color(0xD927654A),
                          fontSize: context.ScreenHeight * 0.0185,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Column(
                    children: [
                      PContainer(
                        height: 0.103,
                        width: 0.23,
                        color: Color(0xFFD9E3DF),
                        borderRadius: 20,
                        image: "images/asset-2.png",
                      ),
                      Text(
                        'Outdoor',
                        style: TextStyle(
                          color: Color(0xD927654A),
                          fontSize: context.ScreenHeight * 0.0185,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Column(
                    children: [
                      PContainer(
                        height: 0.103,
                        width: 0.23,
                        color: Color(0xFFD9E3DF),
                        borderRadius: 20,
                        image: "images/asset-1.png",
                      ),
                      Text(
                        'Indoor',
                        style: TextStyle(
                          color: Color(0xD927654A),
                          fontSize: context.ScreenHeight * 0.0185,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Column(
                    children: [
                      PContainer(
                        height: 0.103,
                        width: 0.23,
                        color: Color(0xFFD9E3DF),
                        borderRadius: 20,
                        image: "images/asset-2.png",
                      ),
                      Text(
                        'Outdoor',
                        style: TextStyle(
                          color: Color(0xD927654A),
                          fontSize: context.ScreenHeight * 0.0185,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: context.ScreenHeight * 0.27,
            width: context.ScreenWidth * 2,
            child: Stack(
              alignment: Alignment.center,
              children: [
                PContainer(
                  height: 0.196,
                  width: 0.98,
                  borderRadius: 35,
                  color: Color(0xFFE4ECDD),
                  padLeft: 25,
                  padRight: 31,
                  padTop: 10,
                  child: Container(
                    padding: EdgeInsets.only(top: 6),
                    height: context.ScreenHeight * 0.18,
                    width: context.ScreenWidth * 0.75,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: context.ScreenHeight * 0.115,
                          width: context.ScreenWidth * 0.75,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                ' 25% offers',
                                style: TextStyle(
                                  color: Color(0xFF121212),
                                  fontSize: context.ScreenHeight * 0.024,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                '12 Jan - 15 Jan',
                                style: TextStyle(
                                  color: Color.fromARGB(168, 18, 18, 18),
                                  fontSize: context.ScreenHeight * 0.019,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                ' Selling Fast',
                                style: TextStyle(
                                  color: Color(0x94121212),
                                  fontSize: context.ScreenHeight * 0.021,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Batten1(
                          txt: "Get now",
                          tx: Color(0xE8FFFFFF),
                          wh: EdgeInsets.symmetric(
                            horizontal: context.ScreenWidth * 0.095,
                            vertical: context.ScreenHeight * 0.0047,
                          ),
                          clr: Color(0xFF266549),
                          S: "/buy",
                          fontWeight: FontWeight.w500,
                          borderRadius: BorderRadius.circular(35),
                          fontSize: 0.023,
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: context.ScreenHeight * 0.42,
                      width: context.ScreenWidth * 0.52,
                      child: Image.asset('images/stack.png', fit: BoxFit.cover),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 27, right: 27, top: 0, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best seller',
                  style: TextStyle(
                    color: Color(0xE71B4332),
                    fontSize: context.ScreenHeight * 0.0225,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  'see all',
                  style: TextStyle(
                    color: Color(0xBA27654A),
                    fontSize: context.ScreenHeight * 0.0189,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: context.ScreenHeight * 0.169,
            width: context.ScreenWidth * 1,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                PContainer(
                  padRight: 20,
                  padLeft: 20,
                  height: 0.0,
                  width: 0.415,
                  color: Color(0xFFD9E3DF),
                  borderRadius: 10,
                  row1Visible: true,
                  plantName: 'Snake plant',
                  image: "images/Snakeplant.png",
                  badingImgLR: 22,
                  row2Visible: true,
                  sold: 'Sold +430',
                  rateVisible: true,
                  rate: '4.5',
                ),
                PContainer(
                  padRight: 20,
                  height: 0.0,
                  width: 0.415,
                  color: Color(0xFFD9E3DF),
                  borderRadius: 10,
                  row1Visible: true,
                  plantName: 'Snake plant',
                  image: "images/Monstera.png",
                  badingImgLR: 35,
                  row2Visible: true,
                  sold: 'Sold +500',
                  rateVisible: true,
                  rate: '4.9',
                ),
                PContainer(
                  padRight: 20,
                  height: 0.0,
                  width: 0.415,
                  color: Color(0xFFD9E3DF),
                  borderRadius: 10,
                  row1Visible: true,
                  plantName: 'Spider plant',
                  image: "images/Spiderplant.png",
                  badingImgLR: 24,
                  row2Visible: true,
                  sold: 'Sold +350',
                  rateVisible: true,
                  rate: '4.3',
                ),
              ],
            ),
          ),
          // SizedBox(height: context.ScreenHeight * 0.03),
          NavBarS(homeV: true),
        ],
      ),
    );
  }
}
