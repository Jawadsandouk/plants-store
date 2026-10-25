import 'package:flutter/material.dart';
import 'package:plants_store/shared/appbarp.dart';
import 'package:plants_store/shared/Sizes.dart';
import 'package:plants_store/shared/batten_controler.dart';
import 'package:plants_store/shared/container.dart';
import 'package:plants_store/shared/counter.dart';
import 'package:plants_store/shared/navbar.dart';

class CartP extends StatefulWidget {
  const CartP({super.key});

  @override
  State<CartP> createState() => _CartPState();
}

class _CartPState extends State<CartP> {
  int counter1 = 0;
  int counter2 = 0;
  double get subtotal => counter1 * 8 + counter2 * 10;
  double get deliveryFee => subtotal == 0 ? 0.00 : 5.00;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3FFFA),
      appBar: AppBarS(titleText: "My Cart", icon: Icons.more_horiz),
      body: Column(
        children: [
          Container(
            // margin: EdgeInsets.only(top: 11),
            height: context.ScreenHeight * 0.2165,
            width: context.ScreenWidth * 0.99,
            child: Row(
              children: [
                PContainer(
                  padLeft: 15,
                  padTop: 15,
                  padRight: 15,
                  padbottom: 15,
                  height: 0.2,
                  width: 0.4,
                  color: Color(0xFFD9E3DF),
                  borderRadius: 10,
                  image: "images/22.png",
                ),
                Container(
                  height: context.ScreenHeight * 1,
                  width: context.ScreenWidth * 0.49,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Peace Lily",
                            style: TextStyle(
                              fontSize: context.ScreenHeight * 0.022,
                            ),
                          ),
                          Text(
                            "\$8.00",
                            style: TextStyle(
                              fontSize: 19,
                              color: Color(0xFF7FCA77),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.close, size: 27),
                          ),
                          CounterS(
                            onchanged: (value) {
                              setState(() {
                                counter1 = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: context.ScreenHeight * 0.204,
            width: context.ScreenWidth * 0.99,
            child: Row(
              children: [
                PContainer(
                  padLeft: 15,
                  padTop: 15,
                  padRight: 15,
                  padbottom: 15,
                  height: 0.18,
                  width: 0.4,
                  color: Color(0xFFD9E3DF),
                  borderRadius: 10,
                  image: "images/Monstera.png",
                  badingImgLR: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 0, top: 0),
                  height: context.ScreenHeight * 1,
                  width: context.ScreenWidth * 0.49,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Monstera",
                            style: TextStyle(
                              fontSize: context.ScreenHeight * 0.022,
                            ),
                          ),
                          Text(
                            "\$10.00",
                            style: TextStyle(
                              fontSize: 19,
                              color: Color(0xFF7FCA77),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.close, size: 27),
                          ),
                          CounterS(
                            onchanged: (value) {
                              setState(() {
                                counter2 = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            // margin: EdgeInsets.only(top: 21, bottom: 20),
            margin: EdgeInsets.only(top: 5, bottom: 5),
            height: context.ScreenHeight * 0.04,
            width: context.ScreenWidth * 0.73,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1.5),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              'Do you have any discount code ?',
              style: TextStyle(fontSize: context.ScreenWidth * 0.04),
            ),
          ),
          Divider(
            color: Colors.grey.shade300,
            thickness: 2.5,
            height: context.ScreenHeight * 0.03,
          ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Subtotal:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color(0xB8000000),
                      ),
                    ),
                    Text(
                      '\$${subtotal.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color(0xB8000000),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Discount:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color(0xB8000000),
                      ),
                    ),
                    Text(
                      "${subtotal == 0 ? '0' : '10'}%",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(184, 6, 157, 1),
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey.shade300,
                  thickness: 2,
                  height: context.ScreenHeight * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery Fee:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color(0xB8000000),
                      ),
                    ),
                    Text(
                      "\$${deliveryFee.toStringAsFixed(2)}",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color(0xB8000000),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xB8000000),
                      ),
                    ),
                    Text(
                      '\$${(subtotal == 0 ? 0 : subtotal * 0.9 + deliveryFee).toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xB8000000),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey.shade300,
            thickness: 2.5,
            height: context.ScreenHeight * 0.04,
          ),
          Batten1(
            txt: "Checkout",
            tx: Color(0xE8FFFFFF),
            wh: EdgeInsets.symmetric(
              horizontal: context.ScreenWidth * 0.19,
              vertical: context.ScreenHeight * 0.014,
            ),
            clr: Color(0xFF266549),
            S: "/delivery",
            fontWeight: FontWeight.w400,
            borderRadius: BorderRadius.circular(35),
            fontSize: 0.029,
          ),
          SizedBox(height: context.ScreenHeight * 0.003),
          NavBarS(cartV: true),
          // SizedBox(height: context.ScreenHeight * 0.0176),
        ],
      ),
    );
  }
}
