import 'package:flutter/material.dart';
import 'package:plants_store/shared/sizes.dart';

class CounterS extends StatefulWidget {
  final ValueChanged<int>? onchanged;

  const CounterS({super.key, this.onchanged});

  @override
  State<CounterS> createState() => _CounterSState();
}

class _CounterSState extends State<CounterS> {
  int counter = 0;

  void decrease() {
    if (counter > 0) {
      setState(() {
        counter--;
      });
      widget.onchanged?.call(counter);
    }
  }

  void increase() {
    setState(() {
      counter++;
    });
    widget.onchanged?.call(counter);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.ScreenWidth * 0.25,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            padding: EdgeInsets.zero,
            iconSize: 18,
            style: IconButton.styleFrom(
              backgroundColor: Color(0xFFE3EEEA),
              fixedSize: Size(22, 22),
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shape: CircleBorder(
                side: BorderSide(color: Color(0xFFB5C5BF), width: 2),
              ),
            ),
            onPressed: decrease,
            icon: Icon(Icons.remove, color: Colors.black),
          ),

          Text(
            '$counter',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ),
          ),

          IconButton(
            padding: EdgeInsets.zero,
            style: IconButton.styleFrom(
              backgroundColor: Color(0xFF82CD78),
              fixedSize: Size(22, 22),
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shape: CircleBorder(),
            ),
            onPressed: increase,
            icon: Icon(Icons.add, size: 20, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
