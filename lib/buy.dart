import 'package:flutter/material.dart';
import 'package:plants_store/shared/appbarp.dart';
import 'package:plants_store/shared/batten_controler.dart';
import 'package:plants_store/shared/container.dart';
import 'package:plants_store/shared/sizes.dart';

class BuyP extends StatelessWidget {
  const BuyP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3FFFA),
      appBar: AppBarS(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: context.ScreenWidth * 0.057),
        height: context.ScreenHeight * 1,
        width: context.ScreenWidth * 1,
        child: Column(
          children: [
            PContainer(
              height: 0.422,
              width: 1,
              color: Colors.transparent,
              borderRadius: 0,
              image: "images/stack2.png",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fiddle Leaf Fig',
                      style: TextStyle(
                        fontSize: context.ScreenWidth * 0.053,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      'indoor planet',
                      style: TextStyle(
                        fontSize: context.ScreenWidth * 0.045,
                        fontWeight: FontWeight.w400,
                        color: Color(0x62000000),
                      ),
                    ),
                    Row(
                      children: List.generate(
                        5,
                        (index) => Icon(
                          index < 4
                              ? Icons.star_rate_rounded
                              : Icons.star_border_rounded,
                          size: context.ScreenHeight * 0.022,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ],
                ),
                PContainer(
                  height: 0.045,
                  width: 0.125,
                  color: Colors.transparent,
                  borderRadius: 0,
                  row1Visible: true,
                  favoriteVisible: true,
                  sizeFav: 0.037,
                  backFav: Colors.transparent,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: context.ScreenHeight * 0.03),
              alignment: Alignment.centerLeft,
              height: context.ScreenHeight * 0.21,
              width: context.ScreenWidth * 1,
              child: Text(
                'More About:\nFiddle Leaf Fig is a popular indoor plant\nknown for its large, glossy, violin-shaped leaves\nIt adds a bold and elegant look to offices and\nhomes. This plant prefers bright indirect light\nand moderate watering, making it a stylish\nchoice for modern interior spaces.',
                style: TextStyle(
                  fontSize: context.ScreenWidth * 0.04,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(183, 0, 0, 0),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              height: context.ScreenHeight * 0.025,
              width: context.ScreenWidth * 1,
              child: Text(
                '\$5.00',
                style: TextStyle(
                  fontSize: context.ScreenWidth * 0.049,
                  fontWeight: FontWeight.w500,
                  color: Color(0xD5178253),
                ),
              ),
            ),
            SizedBox(height: context.ScreenHeight * 0.02),
            Batten1(
              txt: "Add to cart",
              tx: Color(0xFFFFFFFF),
              wh: EdgeInsets.symmetric(
                horizontal: context.ScreenWidth * 0.15,
                vertical: context.ScreenHeight * 0.011,
              ),
              clr: Color(0xFF266549),
              S: "/cart",
              fontWeight: FontWeight.w400,
              borderRadius: BorderRadius.circular(35),
              fontSize: 0.029,
            ),
          ],
        ),
      ),
    );
  }
}
