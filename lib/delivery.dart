import 'package:flutter/material.dart';
import 'package:plants_store/shared/appbarp.dart';
import 'package:plants_store/shared/batten_controler.dart';
import 'package:plants_store/shared/sizes.dart';

class Delivery extends StatefulWidget {
  const Delivery({super.key});

  @override
  State<Delivery> createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  bool isStarActive = true;
  int activeStarsCount = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3FFFA),
      appBar: AppBarS(titleText: "Delivery", leadingV: true),
      body: Container(
        padding: EdgeInsets.all(7.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: context.ScreenHeight * 0.03),
                    Text(
                      "Order #12345",
                      style: TextStyle(
                        fontSize: context.ScreenWidth * 0.05,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(2555, 5, 31, 12),
                      ),
                    ),
                    SizedBox(height: context.ScreenHeight * 0.04),
                    Batten1(
                      txt: "On the way",
                      tx: Color.fromARGB(232, 255, 255, 255),
                      wh: EdgeInsets.symmetric(
                        horizontal: context.ScreenHeight * 0.025,
                        vertical: context.ScreenHeight * 0.001,
                      ),
                      clr: Color.fromARGB(233, 0, 58, 32),
                      S: "/delivery",
                      fontWeight: FontWeight.w400,
                      borderRadius: BorderRadius.circular(45),
                      fontSize: 0.020,
                    ),
                  ],
                ),
                Image.asset('images/map.png', fit: BoxFit.cover),
              ],
            ),
            SizedBox(height: context.ScreenHeight * 0.07),
            Column(
              children: [
                Container(
                  width: context.ScreenWidth * 0.9,
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: context.ScreenHeight * 0.020,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(width: context.ScreenHeight * 0.001),
                      CircleAvatar(radius: 8, backgroundColor: Colors.grey),
                      SizedBox(width: context.ScreenHeight * 0.001),
                      Expanded(
                        child: Container(
                          height: context.ScreenHeight * 0.019,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(width: context.ScreenHeight * 0.001),
                      Expanded(
                        child: Container(
                          height: context.ScreenHeight * 0.015,
                          decoration: BoxDecoration(
                            color: Color(0xFF034b2b),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(width: context.ScreenHeight * 0.001),
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: Color(0xFF034b2b),
                      ),
                      SizedBox(width: context.ScreenHeight * 0.001),
                      Expanded(
                        child: Container(
                          height: context.ScreenHeight * 0.015,
                          decoration: BoxDecoration(
                            color: Color(0xFF034b2b),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(width: context.ScreenHeight * 0.002),
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: Color(0xFF034b2b),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: context.ScreenHeight * 0.015),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Preparing",
                      style: TextStyle(
                        fontSize: context.ScreenHeight * 0.022,
                        color: const Color.fromARGB(255, 6, 6, 6),
                      ),
                    ),
                    Text(
                      "On the way",
                      style: TextStyle(
                        fontSize: context.ScreenHeight * 0.022,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      "Delivered",
                      style: TextStyle(
                        fontSize: context.ScreenHeight * 0.022,
                        color: Color(0xFF070707),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: context.ScreenHeight * 0.07),
            Row(
              children: [
                Batten1(
                  txt: "Track order",
                  tx: Color(0xE8FFFFFF),
                  wh: EdgeInsets.symmetric(
                    horizontal: context.ScreenHeight * 0.032,
                    vertical: context.ScreenHeight * 0.003,
                  ),
                  clr: Color(0xE9034B2B),
                  S: "/delivery2",
                  fontWeight: FontWeight.w400,
                  borderRadius: BorderRadius.circular(10),
                  fontSize: 0.026,
                ),
                SizedBox(width: context.ScreenWidth * 0.05),
                Batten1(
                  txt: "Contact support",
                  tx: Color.fromARGB(232, 14, 12, 12),
                  wh: EdgeInsets.symmetric(
                    horizontal: context.ScreenHeight * 0.020,
                    vertical: context.ScreenHeight * 0.003,
                  ),
                  clr: Color.fromARGB(233, 173, 175, 175),
                  S: "/profile",
                  fontWeight: FontWeight.w400,
                  borderRadius: BorderRadius.circular(10),
                  fontSize: 0.022,
                ),
              ],
            ),
            SizedBox(height: context.ScreenHeight * 0.07),
            SizedBox(
              width: context.ScreenWidth * 0.9,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: context.ScreenWidth * 0.04,
                  vertical: context.ScreenHeight * 0.02,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFEDFCF0),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "The delivery time",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: context.ScreenHeight * 0.019,
                                  ),
                                ),
                                SizedBox(height: context.ScreenHeight * 0.008),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.access_time_outlined,
                                      size: context.ScreenHeight * 0.024,
                                      color: Colors.black87,
                                    ),
                                    SizedBox(
                                      width: context.ScreenWidth * 0.015,
                                    ),
                                    Text(
                                      "12:00",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: context.ScreenHeight * 0.020,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          VerticalDivider(
                            color: Colors.grey.shade300,
                            thickness: 1.2,
                            width: context.ScreenWidth * 0.04,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Distance",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: context.ScreenHeight * 0.018,
                                  ),
                                ),
                                SizedBox(height: context.ScreenHeight * 0.008),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      size: context.ScreenHeight * 0.024,
                                      color: Colors.black87,
                                    ),
                                    SizedBox(
                                      width: context.ScreenWidth * 0.015,
                                    ),
                                    Text(
                                      "2Km",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: context.ScreenHeight * 0.020,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade300,
                      thickness: 1.2,
                      height: context.ScreenHeight * 0.03,
                    ),
                    SizedBox(height: context.ScreenHeight * 0.02),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: context.ScreenHeight * 0.028,
                          backgroundImage: const AssetImage(
                            "images/profile.png",
                          ),
                        ),
                        SizedBox(width: context.ScreenWidth * 0.03),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Moayad",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: context.ScreenHeight * 0.020,
                              ),
                            ),
                            SizedBox(height: context.ScreenHeight * 0.007),
                            Row(
                              children: List.generate(
                                4,
                                (index) => Icon(
                                  Icons.star,
                                  size: context.ScreenHeight * 0.022,
                                  color: Colors.amber,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                          icon: Icon(
                            Icons.chat_bubble,
                            size: context.ScreenHeight * 0.028,
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(width: context.ScreenWidth * 0.06),
                        IconButton(
                          icon: Icon(
                            Icons.phone,
                            size: context.ScreenHeight * 0.028,
                          ),
                          onPressed: () {
                            setState(() {
                              isStarActive = !isStarActive;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Image.asset('images/de.png', fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}
