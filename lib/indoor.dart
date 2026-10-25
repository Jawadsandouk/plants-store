import 'package:flutter/material.dart';
import 'package:plants_store/shared/appbarp.dart';
import 'package:plants_store/shared/container.dart';
import 'package:plants_store/shared/sizes.dart';

class Indoor extends StatelessWidget {
  const Indoor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      backgroundColor: Color(0xFFF3FFFA),
      appBar: AppBarS(searchV: true),
      body: Container(
        padding: EdgeInsets.only(
          left: context.ScreenWidth * 0.05,
          right: context.ScreenWidth * 0.05,
          // top: context.ScreenHeight * 0.02,
        ),
        height: context.ScreenHeight * 1,
        width: context.ScreenWidth * 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: context.ScreenWidth * 0.03,
                bottom: context.ScreenHeight * 0.018,
              ),
              child: Text(
                'Result for "Indoor"',
                style: TextStyle(
                  color: Color(0xCC3C4340),
                  fontSize: context.ScreenWidth * 0.057,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: context.ScreenHeight * 0.82,
              width: context.ScreenWidth * 1,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          PContainer(
                            padRight: 27,
                            height: 0.19,
                            width: 0.415,
                            color: Color(0xFFD9E3DF),
                            borderRadius: 10,
                            row1Visible: true,
                            favoriteVisible: true,
                            image: "images/Snakeplant.png",
                            badingImgLR: 7,
                          ),
                          PContainer(
                            padRight: 27,
                            // height: 0.064,
                            height: 0.0643,
                            width: 0.415,
                            color: Color(0x00D9E3DF),
                            borderRadius: 0,
                            row1Visible: true,
                            plantName: 'Snake plant',
                            sizeplantname: 0.02,
                            row2Visible: true,
                            rateVisible: true,
                            rate: '4.5',
                            sold: ' \$10.00',
                            colorsold: Color(0xBC207B54),
                            sizesold: 0.0155,
                            fontWeightsold: FontWeight.w500,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          PContainer(
                            height: 0.19,
                            width: 0.415,
                            color: Color(0xFFD9E3DF),
                            borderRadius: 10,
                            row1Visible: true,
                            favoriteVisible: true,
                            image: "images/22.png",
                            badingImgLR: 7,
                          ),
                          PContainer(
                            height: 0.0643,
                            width: 0.415,
                            color: Color(0x00D9E3DF),
                            borderRadius: 0,
                            row1Visible: true,
                            plantName: 'Peace Lily',
                            sizeplantname: 0.02,
                            row2Visible: true,
                            rateVisible: true,
                            rate: '3.7',
                            sold: ' \$8.00',
                            colorsold: Color(0xBC207B54),
                            sizesold: 0.0155,
                            fontWeightsold: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: context.ScreenHeight * 0.035),
                  Row(
                    children: [
                      Column(
                        children: [
                          PContainer(
                            padRight: 27,
                            height: 0.19,
                            width: 0.415,
                            color: Color(0xFFD9E3DF),
                            borderRadius: 10,
                            row1Visible: true,
                            favoriteVisible: true,
                            image: "images/Spiderplant.png",
                            badingImgLR: 7,
                          ),
                          PContainer(
                            padRight: 27,
                            height: 0.0643,
                            width: 0.415,
                            color: Color(0x00D9E3DF),
                            borderRadius: 0,
                            row1Visible: true,
                            plantName: 'Spider plant',
                            sizeplantname: 0.02,
                            row2Visible: true,
                            rateVisible: true,
                            rate: '2.9',
                            sold: ' \$10.00',
                            colorsold: Color(0xBC207B54),
                            sizesold: 0.0155,
                            fontWeightsold: FontWeight.w500,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          PContainer(
                            height: 0.19,
                            width: 0.415,
                            color: Color(0xFFD9E3DF),
                            borderRadius: 10,
                            row1Visible: true,
                            favoriteVisible: true,
                            image: "images/Monstera.png",
                            badingImgLR: 23,
                          ),
                          PContainer(
                            height: 0.0643,
                            width: 0.415,
                            color: Color(0x00D9E3DF),
                            borderRadius: 0,
                            row1Visible: true,
                            plantName: 'Monstera',
                            sizeplantname: 0.02,
                            row2Visible: true,
                            rateVisible: true,
                            rate: '4.9',
                            sold: ' \$8.00',
                            colorsold: Color(0xBC207B54),
                            sizesold: 0.0155,
                            fontWeightsold: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: context.ScreenHeight * 0.035),
                  Row(
                    children: [
                      Column(
                        children: [
                          PContainer(
                            padRight: 27,
                            height: 0.19,
                            width: 0.415,
                            color: Color(0xFFD9E3DF),
                            borderRadius: 10,
                            row1Visible: true,
                            favoriteVisible: true,
                            image: "images/stack.png",
                            badingImgLR: 17,
                          ),
                          PContainer(
                            padRight: 27,
                            height: 0.0643,
                            width: 0.415,
                            color: Color(0x00D9E3DF),
                            borderRadius: 0,
                            row1Visible: true,
                            plantName: 'Areca plam',
                            sizeplantname: 0.02,
                            row2Visible: true,
                            rateVisible: true,
                            rate: '3.9',
                            sold: ' \$12.00',
                            colorsold: Color(0xBC207B54),
                            sizesold: 0.0155,
                            fontWeightsold: FontWeight.w500,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          PContainer(
                            height: 0.19,
                            width: 0.415,
                            color: Color(0xFFD9E3DF),
                            borderRadius: 10,
                            row1Visible: true,
                            favoriteVisible: true,
                            image: "images/Fiddle leaf Fig.png",
                            badingImgLR: 23,
                          ),
                          PContainer(
                            height: 0.0643,
                            width: 0.415,
                            color: Color(0x00D9E3DF),
                            borderRadius: 0,
                            row1Visible: true,
                            plantName: 'Fiddle leaf Fig',
                            sizeplantname: 0.02,
                            row2Visible: true,
                            rateVisible: true,
                            rate: '4.5',
                            sold: ' \$5.00',
                            colorsold: Color(0xBC207B54),
                            sizesold: 0.0155,
                            fontWeightsold: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: context.ScreenHeight * 0.035),
                  Row(
                    children: [
                      Column(
                        children: [
                          PContainer(
                            padRight: 27,
                            height: 0.19,
                            width: 0.415,
                            color: Color(0xFFD9E3DF),
                            borderRadius: 10,
                            row1Visible: true,
                            favoriteVisible: true,
                            image: "images/Snakeplant.png",
                            badingImgLR: 7,
                          ),
                          PContainer(
                            padRight: 27,
                            height: 0.0643,
                            width: 0.415,
                            color: Color(0x00D9E3DF),
                            borderRadius: 0,
                            row1Visible: true,
                            plantName: 'Snake plant',
                            sizeplantname: 0.02,
                            row2Visible: true,
                            rateVisible: true,
                            rate: '4.5',
                            sold: ' \$10.00',
                            colorsold: Color(0xBC207B54),
                            sizesold: 0.0155,
                            fontWeightsold: FontWeight.w500,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          PContainer(
                            height: 0.19,
                            width: 0.415,
                            color: Color(0xFFD9E3DF),
                            borderRadius: 10,
                            row1Visible: true,
                            favoriteVisible: true,
                            image: "images/22.png",
                            badingImgLR: 7,
                          ),
                          PContainer(
                            height: 0.0643,
                            width: 0.415,
                            color: Color(0x00D9E3DF),
                            borderRadius: 0,
                            row1Visible: true,
                            plantName: 'Peace Lily',
                            sizeplantname: 0.02,
                            row2Visible: true,
                            rateVisible: true,
                            rate: '3.7',
                            sold: ' \$8.00',
                            colorsold: Color(0xBC207B54),
                            sizesold: 0.0155,
                            fontWeightsold: FontWeight.w500,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: context.ScreenHeight * 0.035),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
