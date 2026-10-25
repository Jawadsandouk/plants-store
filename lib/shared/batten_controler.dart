import 'package:flutter/material.dart';
import 'package:plants_store/shared/sizes.dart';

class Batten1 extends StatelessWidget {
  final String txt;
  final EdgeInsets wh;
  final FontWeight fontWeight;
  final double fontSize;
  final BorderRadius borderRadius;
  final Color tx;
  final Color clr;
  final String S;
  final double hight;
  final double width;

  const Batten1({
    super.key,
    required this.txt,
    required this.tx,
    required this.fontSize,
    required this.borderRadius,
    required this.wh,
    required this.fontWeight,
    required this.clr,
    required this.S,
    this.hight = 0,
    this.width = 0,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed(S);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: clr,
        padding: wh,
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
      ),
      child: Text(
        txt,
        style: TextStyle(
          color: tx,
          fontSize: context.ScreenHeight * fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
