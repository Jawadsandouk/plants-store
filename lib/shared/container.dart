import 'package:flutter/material.dart';
import 'package:plants_store/shared/Sizes.dart';

class PContainer extends StatefulWidget {
  final double padRight;
  final double padLeft;
  final double padTop;
  final double padbottom;
  final double height;
  final double width;
  final Color color;
  final double borderRadius;
  final Widget? child;
  final bool row1Visible;
  final String? plantName;
  final bool favoriteVisible;
  final String? image;
  final bool row2Visible;
  final String? sold;
  final String? rate;
  final bool rateVisible;
  final double badingImgLR;
  final double badingImgTB;
  final Color colorsold;
  final double sizesold;
  final double sizeplantname;
  final FontWeight fontWeightsold;
  final double sizeFav;
  final Color backFav;

  const PContainer({
    super.key,
    required this.height,
    required this.width,
    required this.color,
    required this.borderRadius,
    this.padLeft = 0,
    this.padTop = 0,
    this.padRight = 0,
    this.padbottom = 0,
    this.child,
    this.row1Visible = false,
    this.favoriteVisible = false,
    this.plantName,
    this.image,
    this.row2Visible = false,
    this.sold,
    this.rateVisible = false,
    this.rate,
    this.badingImgLR = 0,
    this.badingImgTB = 0,
    this.colorsold = const Color(0xBC000000),
    this.sizesold = 0.0145,
    this.sizeplantname = 0.017,
    this.fontWeightsold = FontWeight.w400,
    this.sizeFav = 0.028,
    this.backFav = const Color(0xFFDBE1DE),
  });

  @override
  State<PContainer> createState() => _PContainerState();
}

class _PContainerState extends State<PContainer> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: widget.padLeft,
        top: widget.padTop,
        right: widget.padRight,
        bottom: widget.padbottom,
      ),
      height: context.ScreenHeight * widget.height,
      width: context.ScreenWidth * widget.width,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(widget.borderRadius),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Visibility(
            visible: widget.row1Visible,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 5),
                  child: Text(
                    widget.plantName ?? "",
                    style: TextStyle(
                      fontSize: context.ScreenHeight * widget.sizeplantname,
                      fontWeight: FontWeight.w400,
                      color: Color(0xB5000000),
                    ),
                  ),
                ),
                Visibility(
                  visible: widget.favoriteVisible,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    style: IconButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      backgroundColor: widget.backFav,
                    ),
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: isFavorite ? Colors.red : Colors.blueGrey,
                      size: context.ScreenHeight * widget.sizeFav,
                    ),
                    onPressed: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          if (widget.image != null)
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: widget.badingImgLR,
                    vertical: widget.badingImgTB,
                  ),
                  child: Image.asset(widget.image!, fit: BoxFit.cover),
                ),
              ),
            ),
          if (widget.child != null) widget.child!,
          Visibility(
            visible: widget.row2Visible,
            child: Padding(
              padding: EdgeInsets.only(left: 10, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.sold ?? "",
                    style: TextStyle(
                      fontSize: context.ScreenHeight * widget.sizesold,
                      fontWeight: widget.fontWeightsold,
                      color: widget.colorsold,
                    ),
                  ),
                  Visibility(
                    visible: widget.rateVisible,
                    child: Row(
                      children: [
                        Text(
                          widget.rate ?? "",
                          style: TextStyle(
                            fontSize: context.ScreenHeight * 0.0145,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        Icon(
                          Icons.star_rate_rounded,
                          color: Color(0xFFFFE432),
                          size: context.ScreenHeight * 0.03,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
